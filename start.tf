resource "aws_instance" "Test" {
 ami = "ami-162c2575"  ##amazon linux ami
 instance_type = "t2.micro"
 security_groups = ["default"]
 key_name = "singapore"
  root_block_device = {
  volume_size = 30
 }
 connection {
 type = "ssh"
 user = "ec2-user"
 private_key = "${file("PATH")}"
 }
 provisioner "remote-exec" {
 inline = [
 "aws ec2 start-instances --instance-ids i-1234567890abcdef0"
 ]
 }
 tags = {
 Name = "Test"
 }
}
