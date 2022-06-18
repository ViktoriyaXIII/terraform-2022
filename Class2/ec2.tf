resource "aws_instance" "web" {
  ami                         = "ami-0022f774911c1d690"
  instance_type               = "t3.micro"
  key_name                    = aws_key_pair.deployer.key_name
  tags                        = local.common_tags
  vpc_security_group_ids      = [aws_security_group.webs.id]
  associate_public_ip_address = true
  user_data_base64            = "IyEvYmluL2Jhc2gKc3VkbyB5dW0gaW5zdGFsbCBodHRwZCAteSAKc3VkbyBzeXN0ZW1jdGwgc3RhcnQgaHR0cGQg"
}
