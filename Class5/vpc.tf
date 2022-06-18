resource "aws_vpc" "main" {
  cidr_block = var.cidr_block
  tags       = var.tags
}

resource "aws_subnet" "public1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public_subnet1_cidr
  tags       = var.tags
}

resource "aws_subnet" "public2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public_subnet2_cidr
  tags       = var.tags
}