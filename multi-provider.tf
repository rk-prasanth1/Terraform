terraform {
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.46.0"
    }
  }
}

#default profile alias absent
provider "aws" {
    region = "ap-south-1"
    profile = "default"

}

#profile with alias
provider "aws" {
    region = "ap-south-1"
    profile = "default"
    alias = "ap-south-1"
}

resource "aws_instance" "test" {
    provider = "aws"
    ami = "ami-007020fd9c84e18c7"
    instance_type = "t2.micro"

    tags {
        Name = "Terraform main"
    }
}

resource {
    provider = "aws.ap-south-1"
    ami = "ami-007020fd9c84e18c7"
    instance_type = "t2.micro"

    tags {
        Name = "data base"
    }
}