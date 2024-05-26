## Calling the module from the module/org_account file 
module "org_dev_account" {
  source = "../../..//modules/org_account" 
  region = "us-east-1"
  org_account = "730335608472"
  type_account = "principal"
}