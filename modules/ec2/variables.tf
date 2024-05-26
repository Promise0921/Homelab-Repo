# Creating the variable for the ami of the bucket
variable "instance_ami" {
  description = "The ami of the ec2 instance"
  type = string
}

# Creating the variable for the instance type
variable "ec2_type" {
  description = "The type of ec2 instance"
  type = string
}

# Creating the variable for the instance type 
variable "instance_name" {
  description = "The tag name for the ec2 instance"
  type = string
}

#Creating the variable for the region
variable "region" {
  type = string
}

#Creating the variable for the ec2 subnet ID
variable "subnet_id" {
  description = "The subnet ID for the ec2 isnatce"
  type = string
}

#Creating the vraibe for ec2 security group ID
variable "security_group_id" {
  description = "The security group ID for the EC2 instancee"
  type = string
}