variable "total_tls" {
  description = <<EOT
Map of total_tls, attributes below
Required:
    - enabled
    - zone_id
Optional:
    - certificate_authority
EOT

  type = map(object({
    enabled               = bool
    zone_id               = string
    certificate_authority = optional(string)
  }))
}

