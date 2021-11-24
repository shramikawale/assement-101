provider "aws" {
access_key = "*************"
secret_key = "******************************"
region = "ap-south-1"
}

resource "aws_instance" "demo" {
ami = "ami-036d46416a34a611c"
instance_type = "t2.micro"
root_block_device {
    volume_size           = "20"
    volume_type           = "gp2"
    delete_on_termination = true
  }
}
