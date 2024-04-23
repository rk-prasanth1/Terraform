terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.46.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "ap-south-1"
}

resource "aws_instance" "test" {
  ami           = "ami-007020fd9c84e18c7"
  instance_type = "t2.micro"
  tags = {
    Name = "test"
  }
}