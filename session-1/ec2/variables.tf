# variable "instance_type" {
#   default = "t2.micro"
#   description = "EC2 instance type"
# }

# variable "AMI_IMAGE" {
#   default = "ami-0b4f379183e5706b9"
#   description = "AMI_IMAGE"
# }



variable "sg_name" {
  type = string
  default = "roboshop_all_aws_ec2"
  description = "security_group_name"
}


variable "sg_id" {
 
  default = "aws_security_group.roboshop_all"
  description = "security_group_name"
}