output "ec2_instance_public_ips" {
  description = "Public IP addresses of EC2 instances"
  value       = module.ec2_instances.public_ip
}

output "ec2_instance_private_ips" {
  description = "Private IP addresses of EC2 instances"
  value       = module.ec2_instances.private_ip
}
