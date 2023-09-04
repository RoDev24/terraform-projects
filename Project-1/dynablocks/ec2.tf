resource "aws_instance" "myec2vm" {
  ami                    = data.aws_ami.amazonlinux1.id
  instance_type          = var.instance_type
  security_groups = [aws_security_group.web-traffic.name]

  tags = {
    "Name" = "prod_ec2"
  }

}
