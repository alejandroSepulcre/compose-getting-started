terraform {
  required_providers {
    helm = {
      source  = "hashicorp/helm"
      version = "2.14.1"
    }
  }

  required_version = "=1.7.5"

  backend "kubernetes" {
    secret_suffix = "tfstate"
  }
}

provider "helm" {

  kubernetes {
    config_path = var.KUBECONFIG
  }

}
