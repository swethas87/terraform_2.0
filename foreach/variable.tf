variable "instance_names" {
  type = map(any)
  default = {

    db      = "t3.small"
    backend = "t3.micro"
  frontend = "t3.micro" }

}

variable "common_tags" {
  default = {
    Project     = "Expense"
    Environment = "Dev"
    Terraform   = "true"
  }
}

variable "domain_name" {
  default = "niksantechnologies.com"
}

variable "zone_id" {
  default = "Z06680453K4LKZY84VQIS"
}
