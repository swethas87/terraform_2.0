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
