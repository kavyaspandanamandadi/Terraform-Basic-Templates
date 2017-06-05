resource "aws_instance" "Test" {
 ami = "ami-162c2575"  
 instance_type = "t2.micro"
 security_groups = ["default"]  ##change default security group & can also be done by ${var.security} variable defined
 key_name = "singapore"
  root_block_device = {
  volume_size = 30
 }
