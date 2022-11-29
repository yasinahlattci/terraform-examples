resource "random_id" "bucket_prefix" {
  byte_length = 16
}

resource "google_storage_bucket" "backend" {
  depends_on = [
    random_id.bucket_prefix
  ]
  project = var.project_id
  name          = "tfstate-${random_id.bucket_prefix.hex}-bucket"
  force_destroy = true
  location      = var.location
  storage_class = "STANDARD"
  versioning {
    enabled = true
  }
}
