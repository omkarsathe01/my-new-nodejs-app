variable "region" {
  type    = string
  default = "us-east-1"
}

variable "availability_zone" {
  type    = string
  default = "us-east-1a"
}

variable "bucket" {
  type    = string
  default = "terraform-practice-bucket-0"
}

variable "app_count" {
  type    = number
  default = 1
}
