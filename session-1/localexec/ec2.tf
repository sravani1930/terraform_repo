resource "aws_instance" "web" {
  
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.roboshop_all.id]
  
  tags = {
    Name = "web"
  }


provisioner "local-exec" {
    command = "echo ${self.public_ip}"
}

connection {
    type        = "ssh"
    user        = "centos"
    password =  "DevOps321"
    host        = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      
      "sudo yum -y install nginx",
      "sudo systemctl start nginx"
    ]
  }
}
