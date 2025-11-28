#  output "instances_id" {
#    value = aws_instance.web.id
# }

#  output "public_ip" {
#    value = aws_instance.web.private_ip
# }

#  output "private_ip" {
#    value = aws_instance.web.private_ip
# }

output "instance_info" {
    value = aws_instance.web

}