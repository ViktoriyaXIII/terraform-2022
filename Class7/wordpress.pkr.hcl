packer {
  required_plugins {
    amazon = {
      version = ">= 0.0.1"
      source  = "github.com/hashicorp/amazon"
    }
  }
}



source "amazon-ebs" "image" {
  ami_name             = "golden-image {{timestamp}}"
  ssh_private_key_file = "/home/ec2-user/.ssh/id_rsa"
  ssh_keypair_name     = "packer"
  instance_type        = "t2.micro"
  ssh_username         = "ec2-user"
  region               = "us-east-2"
  source_ami           = "ami-0fa49cc9dc8d62c84"
  ami_users            = [
    "099672477597",    # Bota
    "520252485037",    # Anelya
    "764101603994",    # Nurgazy
    ]
  ami_regions          = [
    "us-east-1",
    "eu-central-1",
    "ap-southeast-1",
  ]
  run_tags = {
    Name = "Packer instance for golden-image"
  }
}




build {
  sources = [
    "source.amazon-ebs.image"
  ]
  provisioner "shell" {
    inline = [
      "sudo yum install httpd -y",
      "sudo yum install php php-mysql -y",
      "sudo systemctl restart httpd",
      "sudo systemctl enable httpd",
      "sudo yum install wget -y",
      "sudo wget https://wordpress.org/wordpress-4.0.32.tar.gz",
      "sudo tar -xf wordpress-4.0.32.tar.gz -C /var/www/html/",
      "sudo mv /var/www/html/wordpress/* /var/www/html/",
      "sudo chown -R apache:apache /var/www/html/",
      "sudo systemctl restart httpd"
    ]
  }
  provisioner "breakpoint" {
    note = "Waiting for your verification"
  }
}
