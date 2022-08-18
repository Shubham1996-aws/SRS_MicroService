terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = var.region
}
resource "aws_security_group" "sg" {
  name        = "allow_traffic"
  description = "Allow  inbound traffic"

  dynamic "ingress" {
    for_each = var.security_group
    content {
      from_port = ingress.value
      to_port   = ingress.value
      protocol  = "tcp"
    }
  }

  tags = {
    Name = "sg"
  }

}
//creation of ec2 instance for jenkins
resource "aws_instance" "jenkins-instance" {
  ami           = var.ami
  instance_type = var.instance_type
  user_data     = file("userdata.sh")
  key_name      = "Deepakshi"
  tags = {
    "Name" = "Micro-Service_jenkins"
  }

}

