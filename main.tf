provider "aws" {
  region = var.region
}

module "ec2_instances" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 2.0"

  name           = "sample_instance"
  instance_count = 1

  ami             = var.ami
  instance_type   = var.type
  vpc_security_group_ids = [var.securitygroup]
  root_block_device = {
    volume_size = 10
  }
  tags = {
    Name = var.tag_name
  }
}
