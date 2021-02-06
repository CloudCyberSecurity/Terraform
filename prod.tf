provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_s3_bucket" "prod_tf_course" {
  bucket = "imran-terraform-20210206"
  acl    = "private"
}

resource "aws_default_vpc" "default" {
  
}