## Calling the module from the module/security_group file 
module "my_sec_group" {
  source = "../../..//modules/security_group"
  region = "us-east-1"
  sec_group_name = "dev-sec-group"
  sec_vpc_id = "vpc-0aaf90f6cf5f6d9b6"
  ingress_port_from = 80
  ingress_port-to = 80
  name_proto = "tcp"
  blocks_number = ["0.0.0.0/0"]
}