provider "aws" {
  region = "eu-central-1"
}
resource "aws_instance" "MyFirstTerraformInstance" {
ami             = "ami-0a6dc7529cd559185"
instance_type   = "t2.micro"
tags = {
  "Name" = "MyTerraformEC2Instance11"
}
}