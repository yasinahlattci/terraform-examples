terraform {
  required_version = "1.1.8"

  backend "s3" {
    bucket         = var.bucket_name
    key            = "aws/ssh-key"
    region         = var.region
    dynamodb_table = var.dynamodb_table_name
    encrypt        = true
  }
}