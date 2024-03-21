
// The bool variable can be used to set true or false values inside your terraform file.

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "ec2_example" {
  ami = "ami-0d7a109bf30624c99"
  instance_type = "t2.micro"
  count = 1
  associate_public_ip_address = var.enable_public_ip
  tags = {
    Name = "Terraform EC2"
  }
}

variable "enable_public_ip" {
  description = "Enable public IP address"
  type        = bool
  default     = true
}