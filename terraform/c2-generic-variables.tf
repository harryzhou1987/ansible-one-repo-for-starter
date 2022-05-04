# AWS Region
variable "aws_region" {
  description = "Region in which AWS Resources to be created"
  type = string
  default = "ap-southeast-2"
}

# Environment
variable "environment" {
  description = "Environment"
  type = string
}

# Business Division
variable "team" {
  description = "team"
  type = string
}