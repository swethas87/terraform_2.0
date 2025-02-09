terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.48.0"
    }
  }
  backend "s3" {
    bucket         = "swetha-tf-remote-state"
    key            = "dynamic   -demo"
    region         = "us-east-1"
    dynamodb_table = "swetha-tf-locking"

  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}
