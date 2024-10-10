terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.6.0"
    }
  }
}


provider "google" {
  project = "sre-cp-demo"
  region  = "us-east1"
}

resource "google_compute_instance" "vm_instance" {
  count = length(var.zones["us-east-1"])
  
  machine_type = "n1-standard-1"
  name = "cat-instance-name" 
  zone = element(var.zones["us-east-1"], count.index)

network_interface {
    network = "default"
  }

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
}

resource "google_storage_bucket" "my_bucket" {
  name = "alloy-bucket-cp-test"
  location = "us-east1"
}
