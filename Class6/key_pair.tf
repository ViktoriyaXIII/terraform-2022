resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = file("~/.ssh/id_rsa.pub")
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}



resource "aws_instance" "web" { #manager
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"
  key_name = aws_key_pair.deployer.key_name
  # vpc_security_group_ids = [aws_security_group.remote-exec.id]
  # Execute linux commands on remote machine
  provisioner "remote-exec" {
    connection {
      host        = aws_instance.web.public_ip
      type        = "ssh"
      user        = "ubuntu"
      private_key = file("~/.ssh/id_rsa")
    }
    inline = [
      "sudo apt-get install telnet -y",
    ]
  }
}