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

# Creating a variable for region
variable "region" {
    type = string
}