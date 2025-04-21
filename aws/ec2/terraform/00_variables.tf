variable "aws_region" {
  description = "The AWS region to create resources in"
  type        = string
  default     = "eu-west-3"
}

variable "aws_region_availability_zone" {
  description = "The availability zone to create resources in"
  default     = "eu-west-3a"
}

variable "instance_type" {
  description = "The type of instance to create"
  type        = string
  default     = "t2.nano"
}

variable "key_name" {
  description = "The name of the SSH key pair"
  type        = string
  default     = "default_key"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr" {
  description = "CIDR block for the subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-0359cb6c0c97c6607"
}
