## Calling the module from the module/ec2 file 
module "prod_ec2_instance" {
  source = "../../../modules/ec2"
  region = "us-east-1"
  instance_ami = "ami-04b70fa74e45c3917"
  ec2_type = "t2.micro"
  instance_name = "my-ec2-instance"
  subnet_id = "subnet-0d6ce9e08887586d3"
  security_group_id = "sg-0077918e95ff29d6d"
}




