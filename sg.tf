resource "aws_security_group" "tf_sg" {
  name        = "tf_sg"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.giovanni_vpc.id

  ingress {
    description      = "HTTPS"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

ingress {
    description      = "SSH"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  ingress {
    description      = "HTTP"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  tags = {
    Name = "ts_sg"
  }
}

resource "aws_key_pair" "tf_key" {
  key_name   = "tf_key"
  public_key = tls_private_key.rsa.public_key_openssh
}

resource "tls_private_key" "rsa" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_file" "tf_key" {
    content     = tls_private_key.rsa.private_key_pem
    filename = "../tf_key.tf"
}
