module "ec2_instances" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 2.0"

  name           = "sample_instance"
  instance_count = 1

  ami             = var.ami
  instance_type   = var.type
  vpc_security_group_ids = [var.securitygroup]
  tags = {
    Name = var.tag_name
  }
}
