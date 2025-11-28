


variable "sg-name" {
  type = string
  default = "roboshop_all_aws_ec2"
  description = "security_group_name"
}

variable "sg-description" {
    type = string
    default = "Allow TLS inbound traffic and all outbound traffic"
    description = "description of security group"
}








