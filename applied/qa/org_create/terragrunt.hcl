terraform {
  source = "../../..//infrastructure/region/org_create"
}
include "root" {
  path = find_in_parent_folders()
}