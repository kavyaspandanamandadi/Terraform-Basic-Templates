resource "aws_instance" "Test" {
 ami = "ami-162c2575"  ##amazon linux ami
 instance_type = "t2.micro"
 security_groups = ["default"]
 iam_instance_profile = "s3role" ##can also be used via variable ${var.role}
 key_name = "singapore"
  root_block_device = {
  volume_size = 30
 }
