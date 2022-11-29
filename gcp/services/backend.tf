terraform {
  backend "gcs" {
    bucket  = var.backend_bucket_name
    prefix  = "gcp/services"
  }
}