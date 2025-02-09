# resource <resource-type> <resource-name>
resource "aws_instance" "expense" {
  for_each = var.instance_names
  //count                  = length(var.instance_names)
  ami                    = data.aws_ami.ami_id.id
  instance_type          = each.value
  vpc_security_group_ids = ["sg-0433e256572e383aa"]


  tags = merge(
    var.common_tags,
    {
      Name   = each.key
      Module = each.key
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
