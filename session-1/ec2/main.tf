resource "aws_instance" "terraform_server" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.roboshop_all.id]

  tags = {
    Name = "learn-terraform"
  }
}

resource "aws_security_group" "roboshop_all" {
  name        = var.sg_name
  description = "Allow TLS inbound traffic and all outbound traffic"
  #vpc_id      = aws_vpc.main.id

  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    #ipv6_cidr_blocks = ["::/0"]
  }
  egress  {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    #ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "roboshop_all_aws"
  }
}


