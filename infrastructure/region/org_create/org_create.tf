## Calling the module from the module/org_account file 
module "org_create" {
  source = "../../..//modules/org_create" 
  region = "us-east-1" 
  org_policies = ["SERVICE_CONTROL_POLICY"]
  set_to = "ALL"
  ou_name = "Dev-OU"
  org_policy_name = "Block-EC2-Public-Subnet"
  org_content_id = data.aws_iam_policy_document.ec2_block_policy.json
  iam_policy_name = "Block-IAM-Users-Without-Tags"
  iam_policy_json = data.aws_iam_policy_document.block_iam_without_tag.json
}


data "aws_organizations_organization" "current" {}

data "aws_iam_policy_document" "ec2_block_policy" {
  statement {
    effect = "Deny"
    actions = ["ec2:RunInstances"]
    resources = ["*"]

    condition {
      test     = "ForAnyValue:StringEquals"
      variable = "ec2:SecurityGroupRules/0.0.0.0/0:CidrIp"
      values   = ["0.0.0.0/0"]
    }
  }
}


data "aws_iam_policy_document" "block_iam_without_tag" {
  statement {
    effect = "Deny"
    actions = ["iam:CreateUser"]
    resources = ["*"]
    
    condition {
      test     = "Null"
      variable = "aws:RequestTag/Email"   # (Wildcard *) AWS does not support it in IAM policy conditions directly. 
      values   = ["true"]
    }

    condition {
      test     = "Null"
      variable = "aws:RequestTag/email"    
      values   = ["true"]
    }
  }
}



         
         

