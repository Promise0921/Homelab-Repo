# Variable for region
variable "region" {
  type = string
}

# Variable for list of policies
variable "org_policies" {
  type = list(any)
}


# Variables for feature set
variable "set_to" {
  type = string
}

## Variables for create an organizational unit
variable "ou_name" {
  type = string
}

## Variables for Creating a SCP for preventing EC2 instances in public subnets
variable "org_policy_name" {
  type = string
}

variable "org_content_id" {
  type = string
}

## Variable for creating the SCP for prevent IAM creation without tags
variable "iam_policy_name" {
  type = string
}

variable "iam_policy_json" {
  type = string
}




