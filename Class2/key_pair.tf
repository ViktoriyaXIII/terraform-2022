resource "aws_key_pair" "deployer" {
  key_name   = "web-key"
  public_key = file("~/.ssh/id_rsa.pub")
  tags       = local.common_tags
}

