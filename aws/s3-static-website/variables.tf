variable "domain_name" {
  type = string
  default = "example.com"
}

variable "bucket_name" {
  type = string
  default = "my-example-bucket"
}

variable "dynamodb_table_name" {
  type = string
  default = "my-example-db-table"
}

variable "region" {
  type = string
  default = "us-west-2"
}