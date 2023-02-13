
variable "project_id" {
  description = "The ID of the project in which to provision resources."
  type        = string
}

variable "name" {
  description = "DNS zone name."
  default     = "foo-example-invalid-org"
}

variable "region" {
  description = "The GCP region to deploy instances into"
  type        = string
  default     = "us-east4"
}

variable "enable_logging" {
  description = "Enable query logging for this ManagedZone"
  default     = false
  type        = bool
}