## Creating waf IP set
resource "aws_wafv2_ip_set" "my_ip_set" {
  name               = var.ip_set_name
  description        = var.ip_set_description
  scope              = var.ip_set_scope
  ip_address_version = var.ip_set_version
  addresses          = var.ip_set_addresses

  tags = {
    email = var.ip_set_tags
  }
}


