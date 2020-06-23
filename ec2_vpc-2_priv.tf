resource "aws_instance" "ec2_vpc-2_private_sub_b" {
  ami                    = var.ami
  instance_type          = var.ec2_instance
  key_name               = var.key
  subnet_id              = aws_subnet.vpc-2-sub-b.id
  vpc_security_group_ids = ["${aws_security_group.sg-2.id}"]
  private_ip             = "10.11.2.40"

  user_data = file("userdata_docker_hosts.sh")

  tags = {
    Name     = "ec2-vpc-2-private_sub_b"
    scenario = var.scenario
    env      = "victim"
    az       = var.az1


  }
}