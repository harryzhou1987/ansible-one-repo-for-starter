# Public Bastion Host
   
output "ec2_public_instance_id" {
  description = "The ID of the instance"
  value       = [ for i in module.ec2_public:  i.id]
}


output "ec2_public_ip" {
  description = "List of the public IP"
  value       = [ for i in module.ec2_public:  i.public_ip]
}

output "ec2_connect_string" {
  description = "List of connection strings"
  value       = [ for i in module.ec2_public:  "ssh -i terraform/private-key/${var.instance_keypair}.pem ec2-user@${i.public_ip}"]
}

