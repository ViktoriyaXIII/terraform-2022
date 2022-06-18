resource "aws_iam_policy" "policy" {
  name        = "admin-test-policy"
  description = "A test policy"
  policy      = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": "*",
            "Resource": "*"
        }
    ]
}
EOF
}