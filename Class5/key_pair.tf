resource "aws_key_pair" "deployer" {
  key_name   = "${var.region}-${var.key_name}"  # terraform console -var-file envs/virginia.tfvars 
  public_key = file("~/.ssh/id_rsa.pub")
  tags       = var.tags
}



#  "${}"