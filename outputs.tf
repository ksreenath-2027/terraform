output "instance_id" {
  description = "EC2 Instance ID"
  value       = module.ec2.instance_id
}

output "public_ip" {
  description = "Public IP of EC2"
  value       = module.ec2.public_ip
}