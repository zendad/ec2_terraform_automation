variable "aws_region" {
  description = "AWS region to launch servers."
  default     = "us-west-2"
}

variable "aws_availability_zone" {
  description = "AWS resourses Availablity zone."
  default     = "us-west-2a"
}

variable "aws_ami_ubuntu" {
  description = "Ubuntu 16.04 ami"
  default     = "ami-a58d0dc5"
}

variable "aws_instance_type" {
  description = "aws instance type to create"
  default     = "t2.nano"
}

variable "aws_ec2_user" {
  description = "aws ec2 user"
  default     = "ubuntu"
}

variable "aws_ec2_keyname" {
  description = "aws ec2 keyname"
  default     = "mongodb_access"
}

variable "aws_ec2_keyfile" {
  description = "aws ec2 keyfile"
  default     = "/home/dereck/.ssh/mongodb_access.pem"
}

variable "aws_ec2_ebs_volume_name" {
  description = "ec2 ebs volume name"
  default     =  "/dev/xvdf"
}

variable "aws_ec2_ebs_volume_size" {
  description = "ec2 ebs volume size"
  default     =  5
}

variable "aws_access_key" {
  description = "aws access key"
  default     =  "xxxxxxxxxxxxx"
}

variable "aws_secret_key" {
  description = "aws secret key"
  default     =  "xxxxxxxxx"
}


