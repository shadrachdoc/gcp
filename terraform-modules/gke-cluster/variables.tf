# terraform-modules/gke-cluster/variables.tf

variable "cluster_name" {
  description = "The name of the GKE cluster"
  type        = string
}

variable "location" {
  description = "The location (region/zone) where the cluster will be created"
  type        = string
}

variable "initial_node_count" {
  description = "The initial number of nodes in the cluster"
  type        = number
  default     = 1
}

variable "machine_type" {
  description = "The machine type to use for the cluster nodes"
  type        = string
  default     = "e2-medium"
}

variable "project" {
  description = "The project ID in which to create the cluster"
  type        = string
}

variable "region" {
  description = "The region in which to create the resources"
  type        = string
}

variable "zone" {
  description = "The zone in which to create the cluster"
  type        = string
}

variable "credentials" {
  description = "The path to the GCP credentials JSON file"
  type        = string
}
