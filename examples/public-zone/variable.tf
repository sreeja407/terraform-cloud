variable "project_id" {
  description = "Project id where the zone will be created."
  default     = ""
}

variable "name" {
  description = "DNS zone name."
  default     = "foo-example-invalid-org"
}

variable "domain" {
  description = "Zone domain."
  default     = "foo.example-invalid.org."
}

variable "network_self_links" {
  description = "Self link of the network that will be allowed to query the zone."
  default     = []
}

variable "labels" {
  type        = map(any)
  description = "A set of key/value label pairs to assign to this ManagedZone"
  default = {
    owner   = "foo"
    version = "bar"
  }
}