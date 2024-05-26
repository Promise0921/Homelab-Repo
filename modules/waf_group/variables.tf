## Creating a variable for the region
variable "region" {
  type = string
}

## Creating a variable for the name of the rule
variable "waf_name" {
  description = "The name of the waf rule"
  type = string
  
}

## Creating a variable for the scope of the waf rule
variable "waf_scope" {
  type = string
  
}

## Creating a variable for the capcity
variable "waf_capacity" {
  description = "This must be a number"
  type = number
  default = 1
}
#### "Rule Variables Below"

# Creating a varibale for the name of the rule
variable "waf_rule_name" {
  type = string
}

# Creating a varibale for the priority of the rule
variable "waf_rule_priority" {
  description = "This mmust be a number"
  type = number
}

### visibility_config 
# Creating a variable for the cloadwatch metrics
variable "waf_cloudwatch_metrics" { 
  type = bool
  default = false
}

# Creating variable for the name of the metric
variable "waf_name_metric" {
  type = string  
}

# Creating a variable for the sample request 
variable "waf_request" {
  type = bool

}

#################################################################
# Creating a variable for an ip set
variable "ip_set_name" {
  description = "The name of the ip set"
  type = string
}

# Creating a variable for the ip set description
variable "ip_set_description" {
  type = string
}

# Creating a variable for the scope of the IP set. Could either be "CLOUDFRONT" or "REGIONAL"
variable "ip_set_scope" {
  description = "Scope of the ip set"
  type = string
}

# Creating a variable for the type of IP address version
variable "ip_set_version" {
  description = "could either be IPV4 or IPV6"
  type = string
}

# Creating a variable for the IP addresses
variable "ip_set_addresses" {
  description = "This will include a list of IP address"
  type = list(any)
}

# Creating a variable for tags
variable "ip_set_tags" {
  type = string
  default = null
}


