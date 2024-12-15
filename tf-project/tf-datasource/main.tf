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

data "aws_ami" "ami" {
  most_recent = true
  owners = ["amazon"]
}

resource "aws_instance" "ec2server" {
  ami           = data.aws_ami.ami.id
  instance_type = "t2.micro"

  tags = {
    Name = "Sample EC2 server"
  }
}