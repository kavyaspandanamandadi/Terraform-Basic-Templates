resource "aws_elb" "nonprod-elb" {
...
 security_groups = ["sg-00332353", "sg-23453432"] ##To update or modify existing security groups of an elb or add additional SG to elb
}
