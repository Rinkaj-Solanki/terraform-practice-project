terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.54.1"
    }
  }
}

provider "aws" {
  region = var.region
}

resource "aws_vpc" "my-tf-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "my_tf_vpc"
  }
}

resource "aws_subnet" "private-subnet" {
  cidr_block = "10.0.1.0/24"
  vpc_id = aws_vpc.my-tf-vpc.id
  tags = {
    Name = "tf-private-subnet"
  }
}

resource "aws_subnet" "public-subnet" {
  cidr_block = "10.0.2.0/24"
  vpc_id = aws_vpc.my-tf-vpc.id
  tags = {
    Name = "tf-public-subnet"
  }
}

