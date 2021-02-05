provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "MyTerraformInstanceACG-S3-BUCKET-TEST" {
ami             = "ami-047a51fa27710816e"
instance_type   = "t2.micro"
  key_name   = "nvirginia"
 
  tags = {
    Name = "TACG2-EC2"
  }
}