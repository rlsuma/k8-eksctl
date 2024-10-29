terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.52.0"
    }
  }
  backend "s3" {
    bucket = "my-demo-1"
    key    = "expense-dev-k8-ws"
    region = "us-east-1"
    dynamodb_table = "customer"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}