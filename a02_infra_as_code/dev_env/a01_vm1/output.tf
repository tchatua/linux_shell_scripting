output "vm1_instance_id" {
  value       = module.vm1.instance_id
  description = "The instance id of the vm1 ec2 instance"
}

output "vm1_private_ip" {
  value       = module.vm1.private_ip
  description = "The private IP address of the vm1 ec2 instance"
}

output "vm1_public_ip" {
  value       = module.vm1.public_ip
  description = "Public IP of the vm1 ec2 instance"
}