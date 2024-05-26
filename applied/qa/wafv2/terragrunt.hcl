terraform {
  source = "../../..//infrastructure/region/wafv2"
}
include "root" {
  path = find_in_parent_folders()
}