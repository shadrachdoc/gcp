# terraform-modules/gke-cluster/outputs.tf

output "cluster_name" {
  description = "The name of the GKE cluster"
  value       = google_container_cluster.primary.name
}

output "cluster_endpoint" {
  description = "The endpoint of the GKE cluster"
  value       = google_container_cluster.primary.endpoint
}

output "cluster_ca_certificate" {
  description = "The cluster's public certificate"
  value       = google_container_cluster.primary.master_auth.0.cluster_ca_certificate
}
