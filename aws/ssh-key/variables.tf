variable "key-pair-name" {
  type = string
  default = "my-key-pair"
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
  default = "us-west-2"
  type = string
}