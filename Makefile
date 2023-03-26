SHELL=/bin/bash -o pipefail

TOOLS_DIR ?= $(CURDIR)/bin
export PATH := $(TOOLS_DIR):$(PATH)
.PHONY: tools
tools:
	rm -rf $(TOOLS_DIR) && mkdir -p $(TOOLS_DIR)
	# kubebuilder
	curl -sL -o $(TOOLS_DIR)/kubebuilder https://github.com/kubernetes-sigs/kubebuilder/releases/download/v3.9.0/kubebuilder_$$(go env GOOS)_$$(go env GOARCH) && chmod +x $(TOOLS_DIR)/kubebuilder
	# go tools
	GOBIN=$(TOOLS_DIR) go generate -tags tools tools.go
	# goreleaser
	GOBIN=$(TOOLS_DIR) go install github.com/goreleaser/goreleaser@latest

.PHONY: build
build: internal/web/ui/dist/flutter.js
	go build -o $(TOOLS_DIR)/glmmgr $(BUILD_FLAGS) ./cmd/glmmgr
	go build -o $(TOOLS_DIR)/glm-installer $(BUILD_FLAGS) ./cmd/glm-installer

build_with_tele: BUILD_FLAGS=-tags tele -ldflags "-s -w -X github.com/guardllamanet/guardllama/internal/tele.TeleServerUsername=$${GUARDLLAMA_TELE_SERVER_USERNAME} -X github.com/guardllamanet/guardllama/internal/tele.TeleServerPassword=$${GUARDLLAMA_TELE_SERVER_PASSWORD}"
build_with_tele: build

internal/web/ui/dist/flutter.js:
	$(MAKE) clean_flutter_dist
	@cd ui && flutter build web --output $(CURDIR)/internal/web/ui/dist --base-href "/ui/"

.PHONY: clean
clean: clean_flutter_dist
	cd ui && flutter clean && flutter pub get

.PHONY: clean_flutter_dist
clean_flutter_dist:
	cd $(CURDIR)/internal/web/ui/dist && (ls -A | grep -v ".gitkeep" | xargs rm -rf) || true

TS := $(shell date +%s)

define GLM_K3D_INSTALL_CONFIG
debug: true
cluster:
  kube_config: ~/.kube/config
  host: 127.0.0.1
  k3d:
    name: guardllama
    nodePortRanges:
      # wg
      - fromPort: 31000
        toPort: 31019
        host: 0.0.0.0
        protocol: UDP
manager:
  image: "$(MGR_REPO):$(TS)"

wg:
  image: "$(WG_REPO):$(TS)"

credentials:
  api:
    token: root

endef
export GLM_K3D_INSTALL_CONFIG

.PHONY: glm_install
glm_install: build glm_install_cluster glm_install_charts

.PHONY: glm_install_cluster
glm_install_cluster:
	echo "$${GLM_K3D_INSTALL_CONFIG}" | $(CURDIR)/bin/glm-installer install cluster -c -

.PHONY: glm_install_charts
glm_install_charts: MGR_REPO=k3d-guardllama.localhost:5111/glmmgr
glm_install_charts: WG_REPO=k3d-guardllama.localhost:5111/glmmgr-wg
glm_install_charts:
	TAG=$(TS) \
		MGR_REPO=localhost:5111/glmmgr \
		WG_REPO=localhost:5111/glmmgr-wg \
		$(MAKE) docker_push
	echo "$${GLM_K3D_INSTALL_CONFIG}" | $(CURDIR)/bin/glm-installer install charts -c -

.PHONY: glm_uninstall
glm_uninstall: build
	echo "$${GLM_K3D_INSTALL_CONFIG}" | $(CURDIR)/bin/glm-installer uninstall -c -

TARGET ?= "all"
TAG ?= latest
MGR_REPO ?= ghcr.io/guardllamanet/glmmgr
WG_REPO ?= ghcr.io/guardllamanet/glmmgr-wg

.PHONY: docker_build
docker_build:
	TAG=$(TAG) \
		MGR_REPO=$(MGR_REPO) \
		WG_REPO=$(WG_REPO) \
		docker buildx bake $(TARGET) \
		--set *.args.BUILD_VERSION=DEV \
		--set *.args.BUILD_DATE=$$(date '+%Y-%m-%d')

.PHONY: docker_push
docker_push:
	TAG=$(TAG) \
		MGR_REPO=$(MGR_REPO) \
		WG_REPO=$(WG_REPO) \
		docker buildx bake $(TARGET) \
		--set *.args.BUILD_VERSION=DEV \
		--set *.args.BUILD_DATE=$$(date '+%Y-%m-%d') \
		--push

gen: gen_manifests gen_proto gen_adguard_client

CHART_DIR ?= $(CURDIR)/charts/guardllama
.PHONY: gen_manifests
gen_manifests:
	controller-gen \
		crd \
		rbac:roleName=manager-role \
		webhook \
		paths="./..." \
		output:crd:artifacts:config=config/crd/bases
	controller-gen \
		object:headerFile="hack/boilerplate.go.txt" \
		paths="./..."
	kustomize \
		build \
		config/crd > $(CHART_DIR)/templates/crd.yaml
	kustomize \
		build \
		config/rbac > $(CHART_DIR)/templates/rbac.yaml
	kustomize \
		build \
		config/certmanager > $(CHART_DIR)/templates/certificate.yaml
	kustomize \
		build \
		config/webhook > $(CHART_DIR)/templates/webhook.yaml

.PHONY: gen_proto
gen_proto:
	rm -rf $(CURDIR)/proto/gen
	buf generate
	$(MAKE) gen_swagger_go
	$(MAKE) gen_swagger_dart

.PHONY: gen_swagger_go
gen_swagger_go:
	rm -rf $(CURDIR)/proto/gen/api/v1/swagger
	mkdir -p $(CURDIR)/proto/gen/api/v1/swagger
	docker run \
		--rm \
		--user $$(id -u):$$(id -g) \
		-e GOPATH=$$(go env GOPATH) \
		-v $${HOME}:$${HOME} \
		-w $(CURDIR) \
		quay.io/goswagger/swagger \
		generate client -f $(CURDIR)/proto/gen/api/v1/api.swagger.json -t $(CURDIR)/proto/gen/api/v1/swagger

define SWAGGER_DART_CONFIG
pubName: guardllama_api
pubVersion: 1.0.0
pubDescription: "GuardLlama API Client"
endef
export SWAGGER_DART_CONFIG

.PHONY: gen_swagger_dart
gen_swagger_dart:
	rm -rf $(CURDIR)/proto/gen/flutter
	mkdir -p $(CURDIR)/proto/gen/flutter
	echo "$${SWAGGER_DART_CONFIG}" > $(CURDIR)/proto/gen/flutter/config.yml
	docker run \
		--rm \
		-v $(CURDIR)/proto/gen/flutter:/local \
		-v $(CURDIR)/proto/gen/api/v1/api.swagger.json:/local/input.json \
		openapitools/openapi-generator-cli:v6.4.0 generate \
		-i /local/input.json \
		-g 	dart-dio \
		-c /local/config.yml \
		-o /local
	# sleep due to having issue
	# Cannot rename file to './.dart_tool/pub/bin/build_runner/build_runner.dart-2.19.2.snapshot', path = './.dart_tool/pub/incremental/build_runner/tmpkz27FG/build_runner.dart.incremental.dill.temp' (OS Error: No such file or directory, errno = 2)
	cd $(CURDIR)/proto/gen/flutter && flutter pub get && sleep 2 && flutter pub run build_runner build

.PHONY: gen_adguard_client
gen_adguard_client:
	rm -rf $(CURDIR)/internal/adguard/gen && mkdir $(CURDIR)/internal/adguard/gen
	cd $(CURDIR)/internal/adguard/gen && \
		docker run --rm \
		  -v $$(PWD):/local \
		  -v $(CURDIR)/internal/adguard/openapi.yaml:/local/input.yaml \
		  -v $(CURDIR)/internal/adguard/config.yaml:/local/config.yaml \
		  openapitools/openapi-generator-cli:v6.1.0 generate \
		  -i /local/input.yaml \
		  -g go \
		  -c /local/config.yaml \
		  -o /local && \
		rm -f go.mod go.sum

.PHONY: vet
vet:
	docker \
		run \
		--rm \
		-v $(CURDIR):/app \
		-w /app \
		golangci/golangci-lint:latest \
		golangci-lint run --timeout 5m -v
	buf lint

GO_TEST_FLAGS ?=
.PHONY: test
test:
	go test $$(go list ./... | grep -v e2etest) $(GO_TEST_FLAGS) -count=1 -race -v

.PHONY: e2etest
e2etest:
	TAG=$(TS) WGTEST_REPO=localhost:5111/glm-wgtest $(MAKE) docker_push_wgtest
	go test ./internal/e2etest/ $(GO_TEST_FLAGS) -count=1 -race -v -e2e -wgtest-image $(WGTEST_REPO):$(TS) -api-server http://localhost:38080/api

WGTEST_REPO ?= k3d-guardllama.localhost:5111/glm-wgtest
.PHONY: docker_push_wgtest
docker_push_wgtest:
	TAG=$(TS) \
		WGTEST_REPO=$(WGTEST_REPO) \
		docker buildx bake wgtest --push

.PHONY: testwgconn
testwgconn:
	TAG=$(TS) WGTEST_REPO=localhost:5111/glm-wgtest $(MAKE) docker_push_wgtest
	go test ./internal/e2etest/testwgconn/ $(GO_TEST_FLAGS) -count=1 -race -v -wgtest-image $(WGTEST_REPO):$(TS) -api-server http://localhost:38080/api

.PHONY: goreleaser
goreleaser:
	goreleaser release --clean --snapshot --skip-publish

define GLM_K3S_INSTALL_CONFIG
debug: true

manager:
  image: "$(MGR_REPO):$(TAG)"

wg:
  image: "$(WG_REPO):$(TAG)"

credentials:
  api:
    token: root
endef
export GLM_K3S_INSTALL_CONFIG

INSTALLER_SUDO ?=
.PHONY: installer_test
installer_test: TAG=main
installer_test: MGR_REPO=ghcr.io/guardllamanet/glmmgr
installer_test: WG_REPO=ghcr.io/guardllamanet/glmmgr-wg
installer_test: build
	TMPDIR=$$(mktemp -d -t guardllama-install.XXXXXXXXXX) && \
		   mkdir -p $$TMPDIR/guardllama/bin && \
		   cp -r $(TOOLS_DIR)/* $$TMPDIR/guardllama/bin/ && \
		   tar -C $$TMPDIR/guardllama -zcvf $$TMPDIR/guardllama_$$(go env GOOS)_$$(go env GOARCH).tar.gz bin && \
		   echo "Packaged guardllama_$$(go env GOOS)_$$(go env GOARCH).tar.gz in $$TMPDIR" && \
		   mkdir -p $$TMPDIR/dest && \
		   echo "$${GLM_K3S_INSTALL_CONFIG}" | GUARDLLAMA_DOWNLOAD_URL=file:///$$TMPDIR GUARDLLAMA_DESTIATION_DIR=$$TMPDIR/dest SUDO=$(INSTALLER_SUDO) sh $(CURDIR)/install.sh -c -
	$(TOOLS_DIR)/glm-installer uninstall
