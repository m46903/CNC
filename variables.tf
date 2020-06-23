variable "region" {
  description = " it will define the AWS region "
  default     = "us-east-1"
}
variable "server_port" {
  description = " http service listens on ths port from ec2's"
  default     = "80"
}

variable "ssh_port" {
  description = "ssh request to server  "
  default     = "22"
}

variable "db_port" {
  description = "db request to server  "
  default     = "3306"
}

variable "aws-ami" {
  description = "amazon machine image"
  default     = "ami-0323c3dd2da7fb37d"
}

variable "ami" {
  #Centos for us-east-1
  description = "Centos ami for us-east-1"
  default     = "ami-0affd4508a5d2481b"
}

variable "bastion_host" {
  #Bastion host is an aws ami for us-east-1
  description = "bastion aws-ami for us-east-1"
  default     = "ami-09ab237af4a23d09e"
}

variable "docker_instance" {
  description = "AWS ec2 instance type"
  default     = "m5.xlarge"
  #default     = "t2.micro"
}

variable "indexer" {
  description = "AWS ec2 instance type"
  default     = "i3.4xlarge"
  #default     = "t2.micro"
}

variable "search_head" {
  description = "AWS ec2 instance type"
  default     = "m4.4xlarge"
  #default     = "t2.micro"
}

variable "cluster_master" {
  description = "AWS ec2 instance type"
  default     = "m4.large"
  #default     = "t2.micro"
}

variable "salt_master" {
  description = "AWS ec2 instance type"
  default     = "t2.xlarge"
  #default     = "t2.micro"
}

variable "db_instance" {
  description = "AWS ec2 instance type"
  default     = "t2.nano"
  #default     = "t2.micro"
}


variable "ec2_instance" {
  description = "AWS ec2 instance type"
  default     = "t2.micro"
}

variable "key" {
  description = "key name"
  default     = "content-cyber-range-aws-key"
}

variable "phoenix_docker_key" {
  description = "phoenix_docker_key"
  default     = "phoenix_content-cyber-range-aws-key"
}

variable "db_count" {
  description = "how many ?"
  default     = 1
}

variable "my_public_ip" {
  description = "My laptop public IP address"
  #default = "73.251.127.250/32"
  default = "0.0.0.0/0"
}

variable "RDS_PASSWORD" { default = "psql1234" }

#variable "azs" {
#  default = ["us-east-1a", "us-east-1b", "us-east-1c"]
#}
variable "az1" {
  default = "us-east-1a"
}

variable "az2" {
  default = "us-east-1b"
}

variable "az3" {
  default = "us-east-1c"
}

variable "az4" {
  default = "us-east-1d"
}

variable "az5" {
  default = "us-east-1e"
}

variable "scenario" {
  default = "transit_gw"
}