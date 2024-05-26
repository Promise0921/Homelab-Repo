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

data "aws_iam_policy_document" "ec2_block_policy" {
  statement {
    effect = "Deny"
    actions = ["ec2:RunInstances"]
    resources = ["*"]
    
    condition {
      test     = "StringEquals"
      variable = "ec2:SecurityGroupIds"
      values   = ["sg-000acf41e2f09d0f3"]
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
      variable = "aws:RequestTag/Email"
      values   = ["true"]
    }
  }
}

         
         

