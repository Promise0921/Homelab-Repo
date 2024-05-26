terraform {
  source = "../../..//infrastructure/region/waf_group"
}
include "root" {
  path = find_in_parent_folders()
}