# main.tf (root module)

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
      version = "~> 4.0"
    }
  }
}

provider "google" {
  project     = var.project
  region      = var.region
  zone        = var.zone
  credentials = var.credentials
}

module "gke_cluster" {
  source            = "./terraform-modules/gke-cluster"
  cluster_name      = "gke-cluster-test0815"
  location          = var.zone
  initial_node_count = 1
  machine_type      = "e2-medium"
  project           = var.project
  region            = var.region
  zone              = var.zone
  credentials       = var.credentials
}

output "cluster_name" {
  value = module.gke_cluster.cluster_name
}

output "cluster_endpoint" {
  value = module.gke_cluster.cluster_endpoint
}
