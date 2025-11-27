resource "aws_instance" "web" {
  
  ami           = data.aws_ami.linux.id
  instance_type = "t2.micro"
  tags = {
    Name = "web"
  }
}

