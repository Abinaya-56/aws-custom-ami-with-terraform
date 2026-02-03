provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "from_custom_ami" {
  ami           = "ami-092a68a2c5d445a59"
  instance_type = "t2.micro"
  key_name      = "new-keypair"

  tags = {
    Name = "Terraform-AMI-Instance"
  }
}
