resource "aws_acm_certificate" "cert" {
  count             = local.create_acm_count
  domain_name       = local.acm_cert_domain
  validation_method = "DNS"

  //  tags = local.tags

  lifecycle {
    create_before_destroy = false
  }
}

resource "aws_route53_record" "cert_validation" {
  count   = local.create_acm_count
  name    = aws_acm_certificate.cert[0].domain_validation_options.0.resource_record_name
  type    = aws_acm_certificate.cert[0].domain_validation_options.0.resource_record_type
  zone_id = aws_route53_zone.default.zone_id
  records = [aws_acm_certificate.cert[0].domain_validation_options.0.resource_record_value]
  ttl     = 60
  lifecycle {
    create_before_destroy = false
  }
}
