output "public_ip" {
  value     = aws_instance.expense
  sensitive = false
}
