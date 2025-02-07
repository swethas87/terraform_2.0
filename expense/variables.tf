#ec2 variables
variable "instance_names" {
  type    = list(any)
  default = ["db", "backend", "frontend"]
}

variable "image_id" {

  default = "ami-0c614dee691cbbf37"
}

variable "common_tags" {

  default = {
    Project     = "Expense"
    Environment = "Dev"
    Terraform   = "true"
  }
}

#sg variables
variable "sg_name" {
  default = "allow_ssh"
}
variable "sg_description" {
  default = "allowing port 22"

}
variable "ssh_port" {
  default = 22
}

variable "protocol" {
  default = "tcp"
}

variable "allowed_cidr" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}

#r53 variables
variable "zone_id" {
  default = "Z06680453K4LKZY84VQIS"
}

variable "domain_name" {
  default = "niksantechnologies.com"
}
