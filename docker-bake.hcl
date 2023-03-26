variable "TAG" {
  default = "latest"
}

variable "MGR_REPO" {
  default = "ghcr.io/guardllamanet/glmmgr"
}

variable "WG_REPO" {
  default = "ghcr.io/guardllamanet/glmmgr-wg"
}

variable "WGTEST_REPO" {
  default = "ghcr.io/guardllamanet/glmmgr-wgtest"
}

group "all" {
  targets = ["mgr", "wg"]
}

target "wg" {
  inherits = ["docker-metadata-action"]
  contexts = {
    base = "target:base"
    wgtools = "target:wgtools"
  }
  dockerfile = "Dockerfile.wg"
  tags = ["${WG_REPO}:${TAG}"]
}

target "mgr" {
  inherits = ["docker-metadata-action"]
  dockerfile = "Dockerfile"
  contexts = {
    base = "target:base"
  }
  tags = ["${MGR_REPO}:${TAG}"]
}

target "base" {
  dockerfile = "Dockerfile.base"
}

target "wgtest" {
  inherits = ["docker-metadata-action"]
  dockerfile = "Dockerfile.wgtest"
  contexts = {
    wgtools = "target:wgtools"
  }
  tags = ["${WGTEST_REPO}:${TAG}"]
}

target "wgtools" {
  dockerfile = "Dockerfile.wgtools"
}

target "docker-metadata-action" {}
