package helm

// ChartGroup represents a group of charts that have no dependency on each other
type ChartGroup struct {
	Charts []Chart
}

type Chart struct {
	Namespace string
	Name      string
	RepoURL   string
	LocalPath string
	Version   string
	Values    map[string]interface{}
}
