terraform {
  required_version = "~> 1.10.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "devops-jenkins-1"
    region         = "us-east-2"
    key            = "eks/terraform.tfstate"
    dynamodb_table = "devops-terraform-log"
    encrypt        = true
  }
}

provider "aws" {
  region  = var.aws-region
}
