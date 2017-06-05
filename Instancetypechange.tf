resource "aws_instance" "Test" {
 ami = "ami-162c2575"  ##amazon linux ami
 instance_type = "t2.micro"   ##change the instance type and apply using terraform
 security_groups = ["default"]
 key_name = "singapore"
  root_block_device = {
  volume_size = 30
 }
