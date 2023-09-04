

resource "aws_instance" "myec2vm" {
  ami                    = data.aws_ami.amazonlinux1.id
  instance_type          = var.myinstance_type
  security_groups = [aws_security_group.web-traffic.name]

  tags = {
    "Name" = "prod_ec2"
  }

}


 /* user_data              = file("${path.module}/app1-install.sh")
  #vpc_security_group_ids = [aws_security_group.allow_tls.id]
  vpc_security_group_ids = [aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id] 
  key_name               = var.key_pair

  tags = {
    "Name" = "My_First_ec2"
  }
}
*/


