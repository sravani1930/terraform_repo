variable "ami_id" {
    default = "ami-0b4f379183e5706b9"
    description = "AMI_IMAGE ID"
}



variable "instance_name" {
    type = map
    default = {
        web = "t2.micro"
        user = "t2.micro"
        mongodb = "t3.small"
        # sql = "t3.small"
        # shipping = "t2.micro"
        # cart = "t2.micro"
        # catalogue = "t2.micro"
        # payment = "t2.micro"
        # shipping = "t2.micro"
        # rabbitmq = "t3.small"
        # dispatch = "t2.micro"

    }
    description = "instance name and type"
}

variable "zone_id" {
    default = "Z0534590ZGFZMAJ6NN0J"
    description = "zone id of hosted zone"
}

variable "domain_name" {
    default = "devopsify.space"
    
}
