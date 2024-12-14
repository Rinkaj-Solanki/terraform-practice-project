terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.54.1"
    }
  }
}

provider "aws" {
  # configuration options
  region = var.region
}

resource "aws_s3_bucket" "demo-bucket" {
  bucket = "practice-tf-bucket"
}

resource "aws_s3_object" "bucket-data" {
  bucket = aws_s3_bucket.demo-bucket.bucket
  source = "./Sample.txt"
  key = "data.txt"
}