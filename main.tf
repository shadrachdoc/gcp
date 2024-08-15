terraform {
  cloud {
    organization = "mypro"
    workspaces {
      name = "gcp"
    }
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"  # Use an appropriate version
    }
  }
}

provider "google" {
  project     = var.project
  region      = var.region
  zone        = var.zone
  credentials = var.credentials
}

resource "google_container_cluster" "primary" {
  name               = "gke-cluster-test0815"
  location           = var.zone
  initial_node_count = 1
  node_config {
    machine_type = "e2-medium"
  }
}
