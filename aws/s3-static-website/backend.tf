terraform {
  backend "s3" {
    bucket         = var.bucket_name
    key            = "aws/s3-static-website"
    region         = var.region
    dynamodb_table = var.dynamodb_table_name
    encrypt        = true
  }
}
