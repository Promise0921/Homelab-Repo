module "waf_url" {
  source = "../../../modules/waf_url"
  region = "us-east-1"
  web_acl_name = "Web-acl-url"
  web_acl_description = "Web ACL rule that blocks requests to a specific URL"
  web_acl_scope = "REGIONAL"
  rule_name = "Block Specific URL"
  rule_priority = 1
  statement_search = "/post"
  rule_transformation = "EXACTLY"
  transformation_priority = 0
  transformation_type = "NONE"
  sample_enable = false
  cloudwatch_enable = false
  visibilty_name = "BlockSpecificURL"
}