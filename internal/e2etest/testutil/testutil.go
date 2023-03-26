package testutil

import (
	"context"
	"fmt"
	"os"
	"os/exec"
	"sync"
	"testing"
	"time"

	"github.com/rs/xid"
	batchv1 "k8s.io/api/batch/v1"
	corev1 "k8s.io/api/core/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
	"k8s.io/apimachinery/pkg/types"
	"k8s.io/client-go/kubernetes/scheme"
	"sigs.k8s.io/controller-runtime/pkg/client"
	configlib "sigs.k8s.io/controller-runtime/pkg/client/config"
)

type Step struct {
	Name string
	Step func(t *testing.T)
}

func RunSteps(t *testing.T, steps []Step) {
	for i, s := range steps {
		ii, ss := i, s
		if ii == 0 {
			t.Run(ss.Name, ss.Step)
		} else {
			t.Run(ss.Name, func(tt *testing.T) {
				if t.Failed() {
					tt.SkipNow()
				}
				ss.Step(tt)
			})
		}
	}
}

func NewClient(tb testing.TB) *Client {
	tb.Helper()

	cfg, err := configlib.GetConfig()
	if err != nil {
		tb.Fatal(err)
	}

	c, err := client.New(cfg, client.Options{Scheme: scheme.Scheme})
	if err != nil {
		tb.Fatal(err)
	}

	return &Client{
		Client: c,
	}
}

type Client struct {
	client.Client

	mu      sync.Mutex
	cleanup []func()
}

func (c *Client) CreateNS(tb testing.TB, ctx context.Context) *corev1.Namespace {
	ns := &corev1.Namespace{
		ObjectMeta: metav1.ObjectMeta{
			Name: xid.New().String(),
		},
	}

	c.CleanupLater(func() {
		if err := c.Client.Delete(ctx, ns); err != nil {
			tb.Fatal(err)
		}
	})

	if err := c.Client.Create(ctx, ns); err != nil {
		tb.Fatal(err)
	}

	return ns
}

func (c *Client) CleanupLater(fn func()) {
	c.mu.Lock()
	defer c.mu.Unlock()

	c.cleanup = append(c.cleanup, fn)
}

func (c *Client) Cleanup(tb testing.TB) {
	tb.Helper()

	if debug := os.Getenv("DEBUG"); debug != "" {
		tb.Logf("skiping cleanup: DEBUG=%s", debug)
		return
	}

	c.mu.Lock()
	defer c.mu.Unlock()

	for _, fn := range c.cleanup {
		fn()
	}
}

func PollUntil(tb testing.TB, interval, timeout time.Duration, fn func() error) {
	tb.Helper()

	err := fn()
	if err == nil {
		return
	}

	ctx, cancel := context.WithTimeout(context.Background(), timeout)
	defer cancel()

	ticker := time.NewTicker(interval)
	defer ticker.Stop()

	for {
		select {
		case <-ctx.Done():
			if err != nil {
				tb.Fatal(err)
			}
			return
		case <-ticker.C:
			err = fn()
			if err == nil {
				return
			}
		}
	}
}

func RunWGConnTest(t *testing.T, c *Client, jobName, jobNS, image, wgconf, testURL string) {
	t.Logf("wg conf: \n%s", wgconf)

	ctx, cancel := context.WithCancel(context.Background())
	defer cancel()

	go func() {
		for {
			if ctx.Err() != nil {
				return
			}

			cmd := exec.CommandContext(ctx, "kubectl", "logs", "-n", jobNS, "-l", "job="+jobName, "--tail", "-1", "-f")
			out, err := cmd.Output()
			if err != nil {
				t.Logf("Error getting logs for job, sleeping: output=%q error=%q", out, err)
				time.Sleep(100 * time.Microsecond)
				continue
			}

			// quit if logs output successfully
			t.Logf("wgftest output: \n%s", out)
			break
		}
	}()

	var (
		privileged         = true
		labels             = map[string]string{"job": jobName}
		backoffLimit int32 = 0
	)

	job := &batchv1.Job{
		ObjectMeta: metav1.ObjectMeta{
			Name:      jobName,
			Namespace: jobNS,
		},
		Spec: batchv1.JobSpec{
			BackoffLimit: &backoffLimit,
			Template: corev1.PodTemplateSpec{
				ObjectMeta: metav1.ObjectMeta{
					Labels: labels,
				},
				Spec: corev1.PodSpec{
					RestartPolicy: corev1.RestartPolicyNever,
					Containers: []corev1.Container{
						{
							Name: jobName,
							Args: []string{
								"-test-url",
								testURL,
								"-wg-conf",
								wgconf,
							},
							Image: image,
							SecurityContext: &corev1.SecurityContext{
								Privileged: &privileged,
							},
						},
					},
				},
			},
		},
	}
	if err := c.Create(ctx, job); err != nil {
		t.Fatal(err)
	}

	c.CleanupLater(func() {
		if err := c.Delete(context.Background(), job); err != nil {
			t.Log(err)
		}
	})

	PollUntil(t, time.Second, 10*time.Second, func() error {
		var job batchv1.Job
		if err := c.Get(ctx, types.NamespacedName{Namespace: jobNS, Name: jobName}, &job); err != nil {
			return err
		}

		if job.Status.CompletionTime == nil {
			return fmt.Errorf("Job is not completed: %v", job.Status)
		}

		return nil
	})
}
