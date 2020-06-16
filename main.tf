module "ec2_instances" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 2.0"
# sample
  name           = "sample_instance"
  instance_count = 1
  ami             = var.ami
  instance_type   = var.type
  vpc_security_group_ids = ["sg-dd6ea5f9"]
  subnet_id = "subnet-5904cc3f"
  tags = {
    Name = var.tag_name
  }
}
