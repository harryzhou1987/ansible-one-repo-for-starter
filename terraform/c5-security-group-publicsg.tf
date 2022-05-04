module "public_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "~> 4.9.0"

  name = "public_sg"
  description = "Security Group with SSH,HTTP port open for every one. "
  # Ingress rule
  ingress_cidr_blocks = ["0.0.0.0/0"]
  ingress_rules = ["ssh-tcp","all-icmp","http-80-tcp"]
  # Egress rule
  egress_cidr_blocks = ["0.0.0.0/0"]
  egress_rules = ["all-all"]

  tags = local.common_tags
}