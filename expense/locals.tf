##count and count.index doesnt work in locals
/*locals {
  record_name  = var.instance_names[count.index] == "frontend" ? [aws_instance.expense[count.index].public_ip] : [aws_instance.expense[count.index].private_ip]
  record_value = var.instance_names[count.index] == "frontend" ? [aws_instance.expense[count.index].public_ip] : [aws_instance.expense[count.index].private_ip]
}*/
