locals {
  ami_id        = "ami-090252cbe067a9e58"
  sg_id         = "sg-0433e256572e383aa"
  instance_type = "t3.micro"
  tags = {
    Name = "locals"
  }
}
