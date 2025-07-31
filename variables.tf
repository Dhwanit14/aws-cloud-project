variable "aws_region" {
default = "us-east-1"
}

variable "vpc_cidr" {
default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
default = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
default = "10.0.2.0/24"
}

variable "ami_id" {
description = "Amazon Linux 2 AMI"
default = "ami-051f8a213df8bc089"
}

variable "instance_type" {
default = "t2.micro"
}