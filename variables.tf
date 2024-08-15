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
variable "gcp_credentials_file" {
  description = "Path to the GCP service account JSON file"
  type        = string
}
