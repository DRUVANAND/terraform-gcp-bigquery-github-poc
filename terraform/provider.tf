terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.58.0"
    }
  }
backend "gcs" {
  bucket  = "bigquery-demo-backend-bucket"
  prefix  = "terraform-state"
}
}

provider "google" {
  project     = "your-project"
  region      = "us-central1"
  zone        = "us-central1-c"
}
