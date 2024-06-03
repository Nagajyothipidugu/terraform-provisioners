terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.49.0"
    }
  }
  backend "s3" {
    bucket = "centrobucket"
    key    = "workspaces"
    region = "us-east-1"
    dynamodb_table="s3-locking"
  }
}

#provide authenticatation here
provider "aws" {
  region= "us-east-1"
}