variable "project_name" { default = "acme-webapp-demo" }
variable "region" { default = "us-east-1" }
variable "vpc_cidr" { default = "10.0.0.0/16" }
variable "public_subnet_cidr" { default = "10.0.1.0/24" }
variable "instance_type" { default = "t3.micro" }
variable "ami" { default = "ami-0c94855ba95c71c99" }
variable "tags" { type = map(string) }
