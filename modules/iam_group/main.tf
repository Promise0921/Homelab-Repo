## Creating an IAM user group
resource "aws_iam_group" "user_group" {
  name = var.group_name
}

## Creating an IAM group policy attachment - Managed policy attachment
resource "aws_iam_group_policy_attachment" "user_group_managed_policy" {
                                                      ## Provisioning multiple managed policies to be attached to the group
  for_each   =  toset(var.managed_policies_to_attach) ## toset is used in this occassion because for_each does not accept a list, it only accepts a set or a map                              
  group      =  aws_iam_group.user_group.name         ## This grabs/declares the name of the group that was created above
  policy_arn =  each.key                              ## for_each in a "set": the key and value are the same. In a "map": the key will differ from the value
}

## Creating the AWS in-line policy to be used
resource "aws_iam_policy" "user_group_inline_policy" {
  count =   var.inline_policy_to_attach != "" ? 1 : 0  ## Checks if the value is not an empty string. If it's not empty, it returns 1 instance of the json in-line policy; otherwise, it returns 0
  name = var.policy_name
  description = var.policy_description
  policy = var.inline_policy_to_attach
}

## Attaching the in-line policy to the usergroup
resource "aws_iam_group_policy_attachment" "test-attach" {
  count =   var.inline_policy_to_attach != "" ? 1 : 0  
  group      = aws_iam_group.user_group.name
  policy_arn = aws_iam_policy.user_group_inline_policy[0].arn ## Used to access the count value index startring from 0=1
}