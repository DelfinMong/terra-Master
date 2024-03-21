
// list that will contain more than one element in it.

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "ec2_example" {
  ami = "ami-0d7a109bf30624c99"
  instance_type = "t2.micro"
  count = 1
  tags = {
    Name = "Terraform EC2"
  }
}

resource "aws_iam_user" "example" {
  count = length(var.user_names)
  name = var.user_names[count.index]
}

variable "user_names" {
  description = "IAM usernames"
  type = list(strint)
  default = [ "user1","user2","user3" ]
}