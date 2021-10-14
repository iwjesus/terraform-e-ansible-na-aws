terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "sa-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-054a31f1b3bf90920"
  instance_type = "t2.micro"
  key_name = "iac-alura"
  user_data = <<-EOF
                #!/bin/bash
                cd /home/ubuntu
<<<<<<< HEAD
<<<<<<< HEAD
                echo “<h1>feito com terraform</h1>” > index.html
                nohup busybox httpd -f -p 8080 &
                EOF

                 nohup busybox httpd -f -p 8080 &
                EOF
=======
                echo “<h1>Só o Santos parou a guerra!</h1>” > index.html
                nohup busybox httpd -f -p 8080 &
                EOF
>>>>>>> 35ec581eef656c924bb8676c2bee463c8024d919
=======
                echo “<h1>Só o Santos parou a guerra!</h1>” > index.html
                nohup busybox httpd -f -p 8080 &
                EOF
>>>>>>> 35ec581eef656c924bb8676c2bee463c8024d919

  tags = {
    Name = "teste aws"
  }
}
