
module "example-private-zone" {
  source             = "../../../examples/private-zone"
  project_id         = var.project_id
  name               = var.name
  domain             = var.domain
  network_self_links = google_compute_network.main.self_link
}