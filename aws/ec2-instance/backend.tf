terraform {
  backend "s3" {
    bucket         =  var.bucket_name
    key            = "aws/ec2-instance"
    region         = var.region
    dynamodb_table = var.dynamodb_table_name
    encrypt        = true
  }
}