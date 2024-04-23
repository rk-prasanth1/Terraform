

provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "dev" {
    ami = "ami-0a1b648e2cd533174"
    instance_type = "t2.micro"

    tags = {
      Name = "dev"
    }
}

resource "aws_s3_bucket" "dev-s3" {
    bucket = "dev-bucket"

    tags = {
      Name = "dev bucket"
    } 
}