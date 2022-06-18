# Resource  CloudProvider_product         TerraformName
resource "aws_iam_group" "sales" {
  name = "sales"
}


# Resource  CloudProvider_product         TerraformName
resource "aws_iam_group_membership" "team" {
  name = "tf-testing-group-membership"

  users = [
    aws_iam_user.developer11.name,
    aws_iam_user.developer12.name,
    aws_iam_user.developer13.name,
  ]

  group = aws_iam_group.sales.name
}

