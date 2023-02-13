module "project" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 14.0"

  name              = "ci-cloud-dns"
  random_project_id = "true"
  org_id            = var.org_id
  folder_id         = var.folder_id
  billing_account   = var.billing_account

  activate_apis = [
    "dns.googleapis.com"
  ]
}