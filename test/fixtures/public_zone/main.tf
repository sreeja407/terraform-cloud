
module "example-public-zone" {
  source             = "../../../examples/public-zone"
  project_id         = var.project_id
  name               = var.name
  network_self_links = google_compute_network.main.self_link
}