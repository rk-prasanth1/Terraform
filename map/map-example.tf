variable "ami" {
    type = map(string)
    default = {
      "us-east-1" = "ami"
      "us-east-2" = "ami"
    }  
}

output "ami_of_us_east_1" {
    value = var.ami["us-east-1"]
  
}
