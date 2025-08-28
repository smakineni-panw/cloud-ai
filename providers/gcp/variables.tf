variable "gcp_project_id" {
  description = "The GCP project ID where resources will be deployed."
  type        = string
}

variable "gcs_bucket_name" {
  description = "The globally unique name for the GCS bucket."
  type        = string
}

variable "gcs_location" {
  description = "The GCP location for the GCS bucket."
  type        = string
  default     = "US-EAST1"
}
