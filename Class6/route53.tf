resource "aws_route53_record" "www" {
  zone_id = var.zone_id
  name    = "wordpress21.${var.name}"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.web.public_ip]
}

variable "zone_id" {}
variable "name" {}