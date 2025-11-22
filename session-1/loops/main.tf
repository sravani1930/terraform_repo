resource "aws_instance" "web" {
  count = 9
  ami           = var.ami_id
  instance_type = "t2.micro"
  #instance_type = var.instance_names == "mysql"| var.instance_name == "mysql" ? "t3.small" : "t2.micro"
  vpc_security_group_ids = [aws_security_group.roboshop_all.id]
  tags = {
    Name = var.instance_names[count.index]
  }
}

resource "aws_route53_record" "www" {
  count = 9
  zone_id = var.zone_id
  name    = "${var.instance_names[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [var.instance_names[count.index] == "web" ? aws_instance.web[count.index].public_ip : aws_instance.web[count.index].private_ip]
}