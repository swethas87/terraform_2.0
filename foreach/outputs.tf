output "aws_instances_info" {
  value = {
    for instance in aws_instance.expense :
    instance.id => {
      public_ip  = instance.public_ip
      private_ip = instance.private_ip
    }
  }
}
