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

variable "ami" {
  type        = string
  description = "AMI ID for the EC2 instance"
  default     = "ami-0ae8f15ae66fe8cda"

  validation {
    condition     = length(var.ami) > 4 && substr(var.ami, 0, 4) == "ami-"
    error_message = "Please provide a valid value for variable AMI."
  }
}

variable "instance_type" {
  type        = string
  description = "Instance type for the EC2 instance"
  default     = "t2.micro"
  sensitive   = true
}

variable "tags" {
  type = object({
    Name = string
  })
  description = "Tags for the EC2 instance"
  default = {
    Name = "ubuntu"
  }
}

variable "cidr_block" {
  type    = string
  default = "10.0.0.0/16"
}

variable "subnet_cidr_block" {
  type    = string
  default = "10.0.0.0/24"
}
