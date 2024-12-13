variable "region" {
  description = "This is the region name"
  default = "us-east-1"
  type = string
}

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

resource "aws_instance" "ec2server" {
  ami = "ami-0453ec754f44f9a4a"
  instance_type = "t2.micro"

  tags = {
    Name = "Sample EC2 server"
  }
}