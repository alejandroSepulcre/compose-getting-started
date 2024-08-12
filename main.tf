resource "helm_release" "vote" {
  name      = "vote"
  chart     = "chart"
  namespace = var.OKTETO_NAMESPACE
  values = [
    "${file("chart/values.yaml")}"
  ]
  set {
    name  = "image.repository"
    value = var.OKTETO_BUILD_VOTE_IMAGE
  }

}

resource "helm_release" "redis" {
  name      = "redis-vote"
  chart     = "bitnami/redis"
  namespace = var.OKTETO_NAMESPACE

  set {
    name  = "architecture"
    value = "standalone"
  }
  set {
    name  = "auth.enabled"
    value = "false"
  }
}
