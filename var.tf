
variable "vpc_id" {
  description = "VPC ID for AWS resources."
}

variable "availability_zone_id" {
  description = "AZ used to create EC2 instances."
}

variable "subnet_id" {
  description = "Subnet for EC2 instances."
}

variable "availability_zones" {
  default = "us-west-1a"
}

variable "aws_region" {
  default = "us-west-1"
}

variable "asg_min" {
  default = "2"
}

variable "asg_max" {
  default = "10"
}

variable "asg_desired" {
  default = "2"
}

variable "aws_amis" {
  default = "ami-7a85a01a"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  default = "Final"
}

variable "sgid" {
  default = "default"
}
