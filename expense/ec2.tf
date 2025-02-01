# resource <resource-type> <resource-name>
resource "aws_instance" "db" {

  count                  = length(var.instance_names)
  ami                    = var.image_id # "ami-090252cbe067a9e58"
  instance_type          = var.instance_names[count.index] == "db" ? "t3.small" : "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  tags = merge(
    var.common_tags,
    {
      Name   = var.instance_names[count.index]
      Module = var.instance_names[count.index]
    }
  )
}

resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "allowing SSH access"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0 # from 0 to 0 means, opening all protocols
    to_port     = 0
    protocol    = "-1" # -1 all protocols
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name      = "allow_ssh"
    CreatedBy = "Swetha"
  }
}
