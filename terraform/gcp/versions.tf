terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.45.0"
    }
  }

  required_version = ">= 1.3.2"
}

provider "google" {
  project = var.project
  region  = var.region
}