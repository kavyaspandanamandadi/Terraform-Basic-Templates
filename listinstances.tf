
resource "aws_instance" "Test" {
 ami = "ami-162c2575"  
 instance_type = "t2.micro"
 security_groups = ["default"]
 key_name = " "
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
 "aws ec2 describe-instances --filters 'Name=vpc-id,Values=vpc-24d2b841' > /home/ec2-user/listofinstances.txt"
 ]
 }
 tags = {
 Name = "Test"
 }
}
