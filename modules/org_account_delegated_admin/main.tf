## Creaing AWS organization root account
resource "aws_organizations_delegated_administrator" "my_organ_admin" {
  account_id        = var.org_account
  service_principal = var.type_account
}