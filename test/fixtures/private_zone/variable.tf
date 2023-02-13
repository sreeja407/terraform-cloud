
variable "project_id" {
  description = "The ID of the project in which to provision resources."
  type        = string
}

variable "name" {
  description = "DNS zone name."
  default     = "foo-private"
}

variable "domain" {
  description = "DNS zone domain."
  default     = "foo.private."
}

variable "region" {
  description = "The GCP region to deploy instances into"
  type        = string
  default     = "us-east4"
}