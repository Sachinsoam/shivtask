# DATASOURCE of AMI
data "aws_ami" "amzlinux2" {
  most_recent = true
  owners = [ "amazon" ]
 
  filter {
    name = "root-device-type"
    values = [ "ebs" ]
  }
 
   filter {
    name = "architecture"
    values = [ "x86_64" ]
  }
 
  filter {
    name = "name"
    values = [ "amzn2-ami-hvm-*-gp2" ]
  }
 
  filter {
    name = "virtualization-type"
    values = [ "hvm" ]
  }

}