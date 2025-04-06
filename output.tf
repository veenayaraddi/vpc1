output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "subnet_id" {
  description = "The ID of the subnet"
  value       = module.vpc.subnet_id
}

output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = module.instance.instance_id
}

output "instance_public_ip" {
  description = "The public IP of the EC2 instance"
  value       = module.instance.instance_public_ip
}
