terraform {
  source = "../../..//infrastructure/region/org_account"
}
include "root" {
  path = find_in_parent_folders()
}