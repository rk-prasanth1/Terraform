terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.55.0"
    }
  }
}

provider "aws" {
  region  = "ap-south-1"
  profile = "default"

}

variable "its_production" {
  description = "boolean flag indicates if production is environment"
  type        = bool
  #default = true

}

resource "aws_instance" "production" {
  ami           = "ami-0f58b397bc5c1f2e8"
  instance_type = var.its_production ? "t2.micro" : "t2.large"

  tags = {
    environment = var.its_production ? "production" : "development"
    Name        = var.its_production ? "production" : "development"
  }

}

output "instance_type" {
  value = aws_instance.production.instance_type

}

output "tag" {
  value = aws_instance.production.tags

}
