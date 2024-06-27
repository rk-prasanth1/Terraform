terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.55.0"
    }
  }
}

provider "aws" {
    region = "ap-south-1"
}

variable "instance_type" {
    type = list(string)
    default = [ "t2.micro", "t2.medium", ]
  
}

resource "aws_instance" "ec2" {
    count = length(var.instance_type)
    ami = "ami-0f58b397bc5c1f2e8"
    instance_type = var.instance_type [count.index]
  
    tags = {
      Name = "developer-${count.index}"
    }
}

