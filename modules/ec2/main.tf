## Creating the name ec2 instance and ami of the instance
resource "aws_instance" "my_ec2_instance" {
  ami           = var.instance_ami
  instance_type = var.ec2_type
  subnet_id = var.subnet_id
  vpc_security_group_ids = [var.security_group_id]
  tags = {
    Name = var.instance_name
  }
}

