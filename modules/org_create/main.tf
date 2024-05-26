## Create the organization root
resource "aws_organizations_organization" "my_org" {
  enabled_policy_types = var.org_policies
  feature_set = var.set_to
}

## create an organizational unit (OU).
resource "aws_organizations_organizational_unit" "create_ou" {
  name      = var.ou_name
  parent_id = aws_organizations_organization.my_org.roots[0].id
}

# Creating a SCP for preventing EC2 instances in public subnets
resource "aws_organizations_policy" "block_ec2_public_subnet" {
  name    = var.org_policy_name
  content = var.org_content_id
}

# Creating the SCP for prevent IAM creation without tags
resource "aws_organizations_policy" "block_iam_users_without_tags" {
  name    = var.iam_policy_name
  content = var.iam_policy_json
}

# Attaching the SCP for preventing EC2 instances in public subnets to the root
resource "aws_organizations_policy_attachment" "org_ou" {
  policy_id = aws_organizations_policy.block_ec2_public_subnet.id # The policy that needs to be attached
  target_id = aws_organizations_organizational_unit.create_ou.id  # Attching the policy to the ou
}

# Attaching the SCP for prevent IAM creation without tags
resource "aws_organizations_policy_attachment" "org_ou_ou" {
  policy_id = aws_organizations_policy.block_iam_users_without_tags.id     # The policy that needs to be attached
  target_id = aws_organizations_organizational_unit.create_ou.id           # Attching the policy to the ou
}

