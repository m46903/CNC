resource "aws_instance" "instance1-test" {
  ami                         = var.ami
  instance_type               = var.ec2_instance
  key_name                    = var.key
  subnet_id                   = aws_subnet.vpc-2-sub-a.id
  vpc_security_group_ids      = ["${aws_security_group.sg-2.id}"]
  private_ip                  = "10.11.1.30"
  associate_public_ip_address = true
  source_dest_check           = false

  user_data = file("userdata_docker_hosts.sh")
  
  tags = {  Name     = "ec2-vpc-2-pub_sub_a"  }
}