resource "cloudflare_total_tls" "total_tls" {
  for_each = var.total_tls

  enabled               = each.value.enabled
  zone_id               = each.value.zone_id
  certificate_authority = each.value.certificate_authority
}

