#variables

variable "aws_access_key" {}
variable "aws_secret_key" {}

#provider information
provider "aws" {
  region     = "us-east-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

#Create a VPC
resource "aws_vpc" "amazon" {
  cidr_block = "10.0.0.0/16"

  tags = {
    "Name" = "buddha"
  }
}
