terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.44.1"
    }
  }
}

provider "google" {
  project     = "engineer-cloud-nprod"
  region      = "us-central1"
  zone        = "us-central1-c"
}
