output "instance_id" {
  value = aws_instance.ec2.id
}

output "private_ip" {
  value       = aws_instance.ec2.private_ip
  description = "The private IP address of the webserver instance"
}

output "public_ip" {
  value       = aws_instance.ec2.public_ip
  description = "Public IP of the webserver instance"
}