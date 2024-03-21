// 1.1 Simple Values variables
//As the name suggests Simple Values variables are which hold only a single value. 

#1.string
#2.number
#3.bool

//1.2 Collection Variable

#1.List
#2.Map
#3.Set

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

variable "instance_count" {
  description = "EC2 instance count"
  type        = string
  default     = "t2.micro"
}