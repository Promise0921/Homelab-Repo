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
resource "aws_wafv2_rule_group" "my_waf_rule" {
  name     = var.waf_name
  scope    = var.waf_scope
  capacity = var.waf_capacity

  rule {
    name     = var.waf_rule_name
    priority = var.waf_rule_priority

    action {
      allow {}
    }

    statement {

      ip_set_reference_statement {
        arn = aws_wafv2_ip_set.my_ip_set.arn
      }
    }

    visibility_config {
      cloudwatch_metrics_enabled = var.waf_cloudwatch_metrics
      metric_name                = var.waf_name_metric
      sampled_requests_enabled   = var.waf_request
    }
  }

  visibility_config {
    cloudwatch_metrics_enabled = var.waf_cloudwatch_metrics
    metric_name                = var.waf_name_metric
    sampled_requests_enabled   = var.waf_request
  }
}
