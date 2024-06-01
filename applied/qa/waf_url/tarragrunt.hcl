terraform {
  source = "../../..//infrastructure/region/waf_url"
}
include "root" {
  path = find_in_parent_folders()
}