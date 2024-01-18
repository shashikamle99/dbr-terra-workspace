variable "cidr_block" {
  default = "10.4.0.0/16"
}


variable "tags" {
  default = {}
}


variable "region" {
  default = "us-east-1"
}

resource "random_string" "naming" {
  special = false
  upper   = false
  length  = 6
}

locals {
  prefix = "demo${random_string.naming.result}"
}