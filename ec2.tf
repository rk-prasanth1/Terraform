resource "aws_instance" "dev" {
  ami           = var.ami
  instance_type = var.instance_type
  count         = var.instance_count

  tags = {
    Name = "webserver ${count.index}"
  }
}
