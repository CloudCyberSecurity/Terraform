// efs.tf
resource "aws_efs_file_system" "MyEFS-TACG" {
   creation_token = "efs-example"
   performance_mode = "generalPurpose"
   throughput_mode = "bursting"
   encrypted = "true"
 tags = {
     Name = "MyEFS-TACG"
   }
 }