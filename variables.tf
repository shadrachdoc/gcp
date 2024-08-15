variable "project" {
  type        = string
  description = "The ID of the project in which to provision resources."
}

variable "region" {
  type        = string
  description = "The region in which to provision resources."
}

variable "zone" {
  type        = string
  description = "The zone in which to provision resources."
}
variable "credentials" {
  description = "The contents of a GCP service account key file in JSON format"
  type        = string
  sensitive   = true
}
