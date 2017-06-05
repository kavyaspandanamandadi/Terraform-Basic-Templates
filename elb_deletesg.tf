resource "aws_instance" "nonprod" {         #This is the tag where the lines of code to be created
....
 connection {
 type = "ssh"
 user = "ec2-user"
 private_key = "${file("key.pem")}"
 }
 provisioner "remote-exec" {
 inline = [
 "aws ec2 delete-security-group --group-name MySecurityGroup",  ##to delete security group in EC2 or ELB
 "aws ec2 delete-security-group --group-id sg-903004f8",    ###to delete a security group using ID in EC2 or ELB
 ]
 }
}
