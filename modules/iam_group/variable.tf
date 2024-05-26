# Creating the variable for the user group name 
variable "group_name" {
  description = "The name of the user group to be created"
  type        = string
}

# Creating the variable for mutiple managed policy arn(s)
variable "managed_policies_to_attach" {
  description = "The list of aws managed policy's arn to attach to the user group"
  type        = list(any)
  default     = [] ## If managed policy arn is not provide, this will default to an empty list
}

# Creating the variable for in-line policy to attach
variable "inline_policy_to_attach" {
  description = "The json inline policy to be attached to the user group"
  type        = string
  default     = null ## If user does not provide an in-policy, it will default to null(Empty)
}

# Creating the variable for the name of the policy
variable "policy_name" {
  description = "The name to be given to the inline policy created"
  type = string
  default = null ## If user does not provide name of the policy, it will default to null(Empty)
}

# Creating the Variable for the decription of the policy
variable "policy_description" {
  type = string
  default = null ## If user does not provide a description, it will default to null(Empty)
}

# Creating the variable for the region to be used
variable "region" {
  type = string

}

