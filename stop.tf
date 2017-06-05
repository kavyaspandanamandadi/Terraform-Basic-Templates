resource "aws_instance" "Test" {
 ami = "ami-2cade64c"  ##amazon linux ami
 instance_type = "t2.micro"
 security_groups = ["default"]
 key_name = "Final"
  root_block_device = {
  volume_size = 30
 }
 connection {
 type = "ssh"
 user = "ec2-user"
 private_key = "${file("C:/Users/kavyaspandana/Downloads/Final.pem")}"
 }
 provisioner "remote-exec" {
 inline = [
 "aws ec2 stop-instances --instance-ids i-1234567890abcdef0"
 ]
 }
 tags = {
 Name = "Test"
 }
}
