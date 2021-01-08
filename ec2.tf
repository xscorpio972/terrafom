
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "myec2" {
  ami           = "ami-0be2609ba883822ec"
  instance_type = "t2.micro"
  key_name      = "devops-jzobeide"

  root_block_device {
    delete_on_termination = true
  }
  tags = {
    Name = "ec2-jzobeide"
  }
}
