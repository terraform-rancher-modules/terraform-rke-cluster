terraform {
  required_providers {
    rke = {
      source  = "rancher/rke"
      version = ">= 1.2.4"
    }
    local = {
      source  = "hashicorp/local"
      version = ">= 2.1.0"
    }
  }
}