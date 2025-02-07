resource "aws_route53_record" "expense" {
  count   = length(var.instance_names)
  zone_id = var.zone_id
  name    = var.instance_names[count.index] == "frontend" ? var.domain_name : "${var.instance_names[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = local.record_value
  #if records already exist, then overwrite them
  allow_overwrite = true
}
