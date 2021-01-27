provider "aws" {
  region = "eu-central-1"
}
resource "aws_instance" "MyFirstTerraformInstance" {
ami             = "ami-0a6dc7529cd559185"
instance_type   = "t2.micro"
vpc_security_group_ids = [aws_security_group.instance.id]


user_data = <<-EOF
              #!/bin/bash
              echo "Hello, World" > index.html
              nohup busybox httpd -f -p 8080 &
              EOF

tags = {
  "Name" = "MyTerraformEC2Instance2"
}
}