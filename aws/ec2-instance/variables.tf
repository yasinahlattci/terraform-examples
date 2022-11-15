variable "instance_type" {
  type = string
  default = "t3.small"
}

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
  type = string
  default = "us-west-2"
}

variable "availabiliy_zone" {
  type = string
  default = "us-west-2b"
}