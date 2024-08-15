provider "google" {
  project     = var.project
  region      = var.region
  zone        = var.zone
}

resource "google_container_cluster" "primary" {
  name     = "gke-cluster-test0815"
  location = var.zone

  initial_node_count = 1

  node_config {
    machine_type = "e2-medium"
  }
}

