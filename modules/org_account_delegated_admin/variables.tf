# Variable for provide 
variable "region" {
    type = string
}

# Variable for the admin's account ID
variable "org_account" {
    type = string
}

# Variable for the type of account 
variable "type_account" {
  type = string
  default = "principal"
}

