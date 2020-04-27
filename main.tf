provider "aws" {
  region = var.region
}

module "ec2_instances" {
  source  = "github.com/terraform-aws-modules/ec2-instances/aws"
  version = "2.12.0"

  name           = "sample_instance"
  instance_count = 1

  ami             = var.ami
  instance_type   = var.type
  security_groups = [var.securitygroup]
  root_block_device {
    volume_size = 10
  }
  tags = {
    Name = var.tag_name
  }
}
