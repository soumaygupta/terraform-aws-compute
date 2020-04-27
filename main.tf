module "ec2_instances" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 2.0"

  name           = "sample_instance"
  instance_count = 2
  ami             = var.ami
  instance_type   = var.type
  tags = {
    Name = var.tag_name
  }
}
