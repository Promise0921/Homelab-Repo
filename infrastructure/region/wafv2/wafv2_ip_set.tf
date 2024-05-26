## Calling the module from the module/wafv2 file 
module "dev_waf_ipset" {
  source = "../../..//modules/wafv2"
  region = "us-east-1"
  ip_set_name = "dev-ip-name"
  ip_set_description = "List of my Ip sets"
  ip_set_scope = "REGIONAL" ## This will create it in a specific region
  ip_set_version = "IPV4"
  ip_set_addresses = ["35.146.247.63/32", "0.0.0.0/32"]
  ip_set_tags = "okoraforpromise@yahoo.com"

}

## Calling the module from the module/wafv2 file 
module "prod_waf_ipset" {
  source = "../../..//modules/wafv2"
  region = "us-east-1"
  ip_set_name = "prod-ip-name"
  ip_set_description = "List of my Ip sets"
  ip_set_scope = "CLOUDFRONT" ## This will create it globally
  ip_set_version = "IPV4"
  ip_set_addresses = ["35.146.247.63/32", "0.0.0.0/32"]
  ip_set_tags = "okoraforpromise@yahoo.com"

}