terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
    }
  }
  backend "s3" {
    bucket         = "expense-project-vpc"
    region         = "us-east-1"
    key            = "Project-expense-VPC"
    dynamodb_table = "expense-project-vpc"
  }
}

provider "aws" {
  region = "us-east-1"
}