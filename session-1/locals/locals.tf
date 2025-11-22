locals {
  name = "sravani"
  instance_type = [
    for name in var.instance_names :
        ( name == "mongodb" || name == "mysql") ? "t3.small" : "t2.micro"
    ]
 
}


  
