variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default     = "t2.micro"
}

variable "instance_name" {
  description = "EC2 instance name"
  default     = "Provisioned by Terraform"
}

variable "aws_region" {
  description = "AWS Region"
  default     = "us-east-1"
}

variable "prefix" {
  description = "This is the environment your webapp will be prefixed with. dev, qa, or prod"
  default     = "dev-test"
}

variable "name" {
  description = "Your name to attach to the webapp address"
  default     = "mike"
}