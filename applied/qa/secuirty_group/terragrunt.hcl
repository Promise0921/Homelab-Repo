terraform {
  source = "../../..//infrastructure/region/security_group"
}
include "root" {
  path = find_in_parent_folders()
}