module "ec2_public" {   
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.5.0"

  
  name = "${var.environment}-vm${count.index+1}"

  ami                    = data.aws_ami.amazonlinux2.id
  instance_type          = var.instance_type
  key_name               = var.instance_keypair
  vpc_security_group_ids = [module.public_sg.security_group_id]

  # create_spot_instance = true
  # spot_price           = "0.1"
  # spot_type            = "persistent"

  count = var.instance_count

  # tags = local.common_tags
  tags = local.common_tags

}


# Meta-Argument depends-on
