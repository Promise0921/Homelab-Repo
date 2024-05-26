## Calling the module from the module/s3 file 
module "prod_s3_bukcet" {
  source = "../../..//modules/s3" ## Pointing to the module path for s3 folder
  region = "us-east-1"
  bucket_name = "prod-terraform-s3-bukcet"
}

## Calling the module from the module/s3 file 
module "dev_s3_bukcet" {
  source = "../../..//modules/s3" ## Pointing to the module path for s3 folder
  region = "us-east-1"
  bucket_name = "dev-terraform-s3-bukcet"
}