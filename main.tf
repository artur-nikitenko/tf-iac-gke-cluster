terraform {
  required_version = ">= 1.6.6"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  project = var.GOOGLE_PROJECT
  region  = var.GOOGLE_REGION
}

module "gke_cluster" {
  source         = "github.com/artur-nikitenko/tf-google-gke-cluster"
  GOOGLE_REGION  = var.GOOGLE_REGION
  GOOGLE_PROJECT = var.GOOGLE_PROJECT
  GKE_NUM_NODES  = var.GKE_NUM_NODES
  GKE_MACHINE_TYPE = var.GKE_MACHINE_TYPE
  GKE_DISK_SIZE    = var.GKE_DISK_SIZE
}

terraform {
  backend "gcs" {
    bucket = "tf-state-artur-cluster"
    prefix = "terraform/state"
  }
}
