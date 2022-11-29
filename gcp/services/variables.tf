variable "disable_on_destroy" {
  type = bool
  default = false
}

variable "disable_dependent_services" {
  type = bool
  default = true
}

variable "services" {
  type = list(string)
  default = []
}

variable "project_id" {
  default = ""
  type = string
}

variable "backend_bucket_name" {
  default = ""
  type = string
}
