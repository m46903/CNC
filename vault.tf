resource "aws_instance" "vault" {
  ami                         = var.ami
  instance_type               = var.ec2_instance
  key_name                    = var.key
  subnet_id                   = aws_subnet.vpc-1-sub-b.id
  private_ip                  = "10.10.2.101"
  vpc_security_group_ids      = ["${aws_security_group.private_sg.id}"]
  availability_zone           = var.az3
  associate_public_ip_address = false
  source_dest_check           = false

  tags = { Name = "vault" }
}