resource "google_bigquery_dataset" "dataset" {
  dataset_id                  = "my_dataset"
  friendly_name               = "test"
  description                 = "This is a dataset from Terraform script"
  location                    = "US"
  default_table_expiration_ms = 3600000

  labels = {
    env = "default"
  }
}

resource "google_bigquery_table" "default" {
  dataset_id = google_bigquery_dataset.dataset.dataset_id
  table_id   = "my-table"

  time_partitioning {
    type = "DAY"
  }

  labels = {
    env = "default"
  }
  deletion_protection=false
}
