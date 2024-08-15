provider "google" {
  credentials = file("path/to/your/service/account.json") // Replace this with the actual path in your environment
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

output "kubernetes_cluster_name" {
  value = google_container_cluster.primary.name
}
