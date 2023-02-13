
terraform {
  required_version = ">= 0.13"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 3.63"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = ">= 3.63"
    }
  }
}