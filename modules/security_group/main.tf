resource "aws_security_group" "my_security_group" {
  name        = var.sec_group_name
  description = var.sec_description
  vpc_id      = var.sec_vpc_id


ingress {
    from_port   = var.ingress_port_from
    to_port     = var.ingress_port-to
    protocol    = var.name_proto
    cidr_blocks = var.blocks_number
  }

  egress {
    from_port   = var.ingress_port_from
    to_port     = var.ingress_port-to
    protocol    = var.name_proto
    cidr_blocks = var.blocks_number
  }
}