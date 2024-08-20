terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  backend "s3" {
    bucket = bucket
    key    = "state"
    region = "us-east-1"
  }
}
provider "aws" {
  region = var.region

  default_tags {
    tags = {
      Name = "architect-demo"
    }
  }
}
