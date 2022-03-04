# Deploying an EC2 server using terraform

provider "aws" {
  region     = "ap-south-1"
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_instance" "practise-server" {
  ami             = "ami-0851b76e8b1bce90b"
  instance_type   = "t2.micro"
  key_name        = "Red_hat"
  vpc_security_group_ids = ["${aws_security_group.practise-server-sg.id}"]
  tags = {
    Name = "CubeWorks_Nginx_POC"
  }

}

resource "aws_security_group" "practise-server-sg" {
  name        = "Project_sec_grp"
  description = "Security_Group"
  ingress {
    from_port   = 22
    protocol    = "tcp"
    to_port     = 22
    cidr_blocks = ["103.138.44.194/32"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}
