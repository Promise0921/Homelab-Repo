## Calling the module from the module/waf_group file 
module "prod_waf_rule_group" {
  source = "../../..//modules/waf_group" ## Pointing to the module path for waf_group folder
  region = "us-east-1"
  waf_name = "prod_waf_rule_group"
  waf_scope = "REGIONAL"
  waf_capacity = 1
  waf_rule_name = "prod-waf-rule-group"
  waf_rule_priority = 1
  waf_cloudwatch_metrics = false
  waf_name_metric = "prod-metric-waf-group"
  waf_request = false
  ip_set_name = "dev-ip-name"
  ip_set_description = "List of my Ip sets"
  ip_set_scope = "REGIONAL" ## This will create it in a specific region
  ip_set_version = "IPV4"
  ip_set_addresses = ["35.146.247.63/32", "0.0.0.0/32"]
  ip_set_tags = "okoraforpromise@yahoo.com"
}

