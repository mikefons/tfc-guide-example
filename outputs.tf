output "instance_ami" {
  value = aws_instance.ubuntu.ami
}

output "instance_arn" {
  value = aws_instance.ubuntu.arn
}

output "website_endpoint" {
  value = module.s3-webapp.endpoint
}