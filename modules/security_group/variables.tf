variable "region" {
    type = string
}

## Variable for the name of the security group
variable "sec_group_name" {
    type = string
}

## Variable for the description
variable "sec_description" {
    type = string
    default = null
}

## Variable for the vpc id
variable "sec_vpc_id" {
  type = string
}

#### For ingress variables 
variable "ingress_port_from" {
  type = number
}
variable "ingress_port-to" {
  type = number
}
variable "name_proto" {
  type = string
}
variable "blocks_number" {
    type = list(any)
}


