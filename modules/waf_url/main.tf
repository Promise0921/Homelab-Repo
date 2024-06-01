# Creating an AWS web ACL

resource "aws_wafv2_web_acl" "example" {
  name        = var.web_acl_name
  description = var.web_acl_description
  scope       = var.web_acl_scope

  default_action {
    allow {}
  }

  rule {
    name     = var.rule_name
    priority = var.rule_priority

    statement {
      byte_match_statement {
        search_string = var.statement_search
        field_to_match {
          uri_path {}
        }
        positional_constraint = var.rule_transformation
        text_transformation {
          priority = 0
          type     = var.transformation_type
        }
      }
    }

    action {
      block {}
    }

# This is for monitoring and logging purposes    
    visibility_config {
      sampled_requests_enabled    = var.sample_enable
      cloudwatch_metrics_enabled  = var.cloudwatch_enable
      metric_name                 = var.visibilty_name
    }
  }

  visibility_config {
    cloudwatch_metrics_enabled  = var.sample_enable
    metric_name                 = var.visibilty_name
    sampled_requests_enabled    = var.cloudwatch_enable
  }
}

# Creating a load balancer
resource "aws_lb" "test" {
  name               = "test-lb-tf"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.lb_sg.id]
  subnets            = [for subnet in aws_subnet.public : subnet.id]
}