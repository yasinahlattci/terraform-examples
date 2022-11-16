
resource "aws_s3_bucket" "website_bucket" {
  bucket = var.domain_name
  acl = "public-read"
  policy = data.aws_iam_policy_document.website_policy.json
  website {
    index_document = "index.html"
    error_document = "errors/error.html"
  }

  versioning {
    enabled = true
  }
}

resource "aws_s3_bucket_cors_configuration" "bucket_cors_policy" {
  bucket = aws_s3_bucket.website_bucket.bucket

  cors_rule {
    allowed_headers = ["*"]
    allowed_methods = ["GET", "POST", "DELETE", "PUT"]
    allowed_origins = ["*"]
  }
}
