# Creating the variable for the name of the bucket
variable "bucket_name" {
  description = "The name of the s3 bucket"
  type = string
}

# Creating the variable for the region
variable "region" {
  type = string
}