
terraform {
  required_version = ">= 0.13"
  required_providers {

    google = {
      source  = "hashicorp/google"
      version = ">= 4.40, < 5.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = ">= 4.40, < 5.0"
    }
  }

  provider_meta "google" {
    module_name = "blueprints/terraform/terraform-google-cloud-dns/v4.2.1"
  }

  provider_meta "google-beta" {
    module_name = "blueprints/terraform/terraform-google-cloud-dns/v4.2.1"
  }

}