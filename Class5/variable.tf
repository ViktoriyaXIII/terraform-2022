variable "region" {
  description = "Please provide a region to deploy key pair"
  type        = string
  default     = ""
}

variable "key_name" {
  description = "Please provide a key_name to deploy key pair"
  type        = string
  default     = ""
}

variable "cidr_block" {
  description = "Please provide a cidr_block to deploy VPC"
  type        = string
  default     = ""
}


variable "tags" {
  description = "Please provide a tags to deploy resources"
  type        = map(any)
  default     = {}
}



variable "public_subnet1_cidr" {
  description = "Please provide a public_subnet1_cidr to deploy VPC"
  type        = string
  default     = ""
}


variable "public_subnet2_cidr" {
  description = "Please provide a public_subnet2_cidr to deploy VPC"
  type        = string
  default     = ""
}
