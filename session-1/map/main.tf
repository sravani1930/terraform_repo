resource "aws_instance" "web" {
  for_each = var.instance_name
  ami           = var.ami_id
  instance_type = each.value
  vpc_security_group_ids = [aws_security_group.roboshop_all.id]
  tags = {
    Name = each.key
  }
}

resource "aws_route53_record" "www" {
  for_each = aws_instance.web
  zone_id = var.zone_id
  name    = "${each.key}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [each.key == "web" ? aws_instance.web[each.key].public_ip : aws_instance.web[each.key].private_ip]
}

# output "aws_info" {
#     value = aws_instance.web

# }