terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.54.1"
    }
  }
  backend "s3" {
    bucket = "practice-tf-bucket"
    key = "backend.tfstate"
    region = "us-east-1"
  }
}


provider "aws" {
  # configuration options
  region = var.region
}