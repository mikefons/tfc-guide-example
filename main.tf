provider "aws" {
  region = var.region
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "ubuntu" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
    Env  = "env15"
  }
}

module "s3-webapp" {
  source  = "app.terraform.io/mfonseca-org/s3-webapp/aws"
  version = "1.0.0"
  name   = var.name
  region = var.region
  prefix = var.prefix
}