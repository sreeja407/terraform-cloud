
output "domain" {
  description = "Zone domain."
  value       = var.domain
}

output "name" {
  description = "Zone name."
  value       = var.name
}

output "name_servers" {
  description = "Zone name servers."
  value       = module.example-private-zone.name_servers
}

output "project_id" {
  description = "The ID of the project in which resources are provisioned."
  value       = var.project_id
}