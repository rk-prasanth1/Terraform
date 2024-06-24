variable "ami" {
  default = "ami-0f58b397bc5c1f2e8"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "instance_count" {
  type    = number
  default = 2

}
