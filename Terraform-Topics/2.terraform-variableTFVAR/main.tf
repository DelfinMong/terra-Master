

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "ec2_example" {
  ami = "ami-0d7a109bf30624c99"
  instance_type = var.instance_count
  tags = {
    Name = "Terraform EC2"
  }
}

