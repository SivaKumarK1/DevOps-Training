 # Deploying an EC2 server using terraform

provider "aws" {
  region = "ap-south-1"
    access_key = var.access_key
    secret_key = var.secret_key
}

resource "aws_instance" "practise-server" {
    ami =  "ami-0851b76e8b1bce90b"
    instance_type = "t2.micro"

    tags = {
        Name = "Terraform_server"
    }
}