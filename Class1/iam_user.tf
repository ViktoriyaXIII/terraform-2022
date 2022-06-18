resource "aws_iam_user" "developer11" {
  name = "developer11"
}
resource "aws_iam_user" "developer12" {
  name = "developer12"
}

resource "aws_iam_user" "developer13" {
  name = "developer13"
}

# CMD + /
resource "aws_iam_user" "developer14" {
  name = "developer14"
}


output "ANYNAME" {
  value = aws_iam_user.developer13.arn
}

output "ANYNAME2" {
  value = aws_iam_user.developer14.arn
}


resource "aws_iam_user" "multiuser" {
  name = each.key
  for_each = toset([
    "bob",
    "sam",
    "lisa",
  ])
}