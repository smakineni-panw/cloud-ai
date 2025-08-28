resource "google_storage_bucket" "my_gcs_bucket" {
  name          = var.gcs_bucket_name
  location      = var.gcs_location
  force_destroy = true # Allows deleting the bucket even if it contains objects

  labels = {
    environment = "dev"
    managedby   = "terraform"
  }
}
