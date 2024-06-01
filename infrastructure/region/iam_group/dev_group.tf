## Calling the module from the module/iam_group file 
module "dev" {
  source = "../../..//modules/iam_group" ## Pointing to the module path for iam group folder

  ## Specifying the variable declaration based on the information in the - modules>iam_group_variables 
  group_name              = "dev"
  region                  = "us-east-1"
  policy_name             = "dev-policy"
  policy_description      = "automation-dev-polies"
  inline_policy_to_attach = data.aws_iam_policy_document.dev_inline_policy.json
  managed_policies_to_attach = [ ## Specifying the list of managed policy arns
    "arn:aws:iam::aws:policy/AmazonS3FullAccess",
    "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
  ]
}

## Using datablock to declare the in-policy
data "aws_iam_policy_document" "dev_inline_policy" {
  statement {
    sid = ""

    actions = ["*"]

    resources = ["*"]
  }

  statement {
    sid = ""

    actions = ["*"]

    resources = ["*"]
  }
}


