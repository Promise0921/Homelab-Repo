variable "region" {
  type = string
}

# Variables for creating the web ACL
variable "web_acl_name" {
  type = string
}

variable "web_acl_description" {
  type = string
}

variable "web_acl_scope" {
  type = string
}

# Variables for the web acl rule
variable "rule_name" {
  type = string
}

variable "rule_priority" {
  type = number
}

# Variables for statement of the rule
variable "statement_search" {
  type = string
}
variable "rule_transformation" {
  type = string
}

variable "transformation_priority" {
  type = number
}

variable "transformation_type" {
  type = string
}

# variables for visibility config
variable "sample_enable" {
  type = bool
}

variable "cloudwatch_enable" {
  type = bool
}

variable "visibilty_name" {
  type = string
}