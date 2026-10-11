output "total_tls_id" {
  description = "Map of id values across all total_tls, keyed the same as var.total_tls except keys with no id are omitted"
  value       = { for k, v in cloudflare_total_tls.total_tls : k => v.id if v.id != null && length(v.id) > 0 }
}
output "total_tls_certificate_authority" {
  description = "Map of certificate_authority values across all total_tls, keyed the same as var.total_tls except keys with no certificate_authority are omitted"
  value       = { for k, v in cloudflare_total_tls.total_tls : k => v.certificate_authority if v.certificate_authority != null && length(v.certificate_authority) > 0 }
}
output "total_tls_enabled" {
  description = "Map of enabled values across all total_tls, keyed the same as var.total_tls except keys with no enabled are omitted"
  value       = { for k, v in cloudflare_total_tls.total_tls : k => v.enabled if v.enabled != null }
}
output "total_tls_validity_period" {
  description = "Map of validity_period values across all total_tls, keyed the same as var.total_tls except keys with no validity_period are omitted"
  value       = { for k, v in cloudflare_total_tls.total_tls : k => v.validity_period if v.validity_period != null }
}
output "total_tls_zone_id" {
  description = "Map of zone_id values across all total_tls, keyed the same as var.total_tls except keys with no zone_id are omitted"
  value       = { for k, v in cloudflare_total_tls.total_tls : k => v.zone_id if v.zone_id != null && length(v.zone_id) > 0 }
}

