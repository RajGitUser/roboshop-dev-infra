terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.16.0"
    }
  }

  backend "s3" {
    bucket = "raj-remotestate-16-dev"
    key    = "roboshop-dev-bastion"
    region = "us-east-1"
    use_lockfile = true
    encrypt = true
  }
}

provider "aws" {
  region = "us-east-1"
}