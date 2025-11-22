resource "aws_instance" "terraform_server" {
  ami           = var.ami_id
  instance_type = var.instance-name == "MONGODB" ? "t3.small" : "t2.micro"
  # vpc_security_group_ids = [aws_security_group.roboshop_all.id]
  # tags = var.tags
}