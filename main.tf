terraform {
  required_version = ">= 1.13.0"

  backend "gcs" {
    bucket = "cloudme-508910-tfstate"
    prefix = "terraform/cloudmerepo"
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 7.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

resource "google_compute_instance" "cloudme_test" {
  name         = var.vm_name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.boot_image
      size  = 10
      type  = "pd-balanced"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }

  labels = {
    purpose    = "personal-test"
    managed_by = "terraform"
  }
}
