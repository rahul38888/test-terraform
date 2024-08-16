terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "ap-south-1"
}

resource "aws_instance" "test-ec2" {
  ami           = "ami-022ce6f32988af5fa"
  instance_type = "t2.micro"
  tags = {
    Name = var.instance_name
  }
  subnet_id = "subnet-0340185b6a4f5ca51"

}