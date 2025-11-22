variable "instance_names" {
    type = list
    default = ["mongodb","web","mysql","catalogue","user","cart","payment","shipping","rabbitmq","dispatch"]
}

variable "ami_id" {
  default = "ami-0b4f379183e5706b9"
  description = "AMI_IMAGE"
}

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

variable "zone_id" {
    default = "Z0534590ZGFZMAJ6NN0J"
    description = "zone id of hosted zone"
}

variable "domain_name" {
    default = "devopsify.space"
    
}






