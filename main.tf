provider "aws" {
  region = "ap-south-1"
}

resource "aws_security_group" "web_sg" {
  name = "terraform-web-sg"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "webserver" {
  ami                    = "ami-0685bcc683dadb6b9"
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.web_sg.id]

  user_data = <<-EOF
#!/bin/bash
dnf update -y
dnf install -y nginx git

systemctl enable nginx
systemctl start nginx

cd /tmp
git clone https://github.com/StartBootstrap/startbootstrap-landing-page.git

if [ -d "/tmp/startbootstrap-landing-page" ]; then
    rm -rf /usr/share/nginx/html/*
    cp -r /tmp/startbootstrap-landing-page/* /usr/share/nginx/html/
fi

systemctl restart nginx
EOF

  tags = {
    Name = "Terraform-WebServer"
  }
}