variable "name" {}
variable "vpc_cidr" { default = "10.0.0.0/16" }
variable "public_subnet_cidr" { default = "10.0.1.0/24" }
variable "tags" { type = map(string) }

resource "aws_vpc" "this" {
  cidr_block = var.vpc_cidr
  tags       = var.tags
}

resource "aws_subnet" "public" {
  vpc_id                   = aws_vpc.this.id
  cidr_block               = var.public_subnet_cidr
  map_public_ip_on_launch  = true
  tags                     = var.tags
}

output "vpc_id" { value = aws_vpc.this.id }
output "public_subnet_id" { value = aws_subnet.public.id }
