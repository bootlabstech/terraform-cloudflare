resource "cloudflare_load_balancer" "cf_load_balancer" {
  zone_id          = var.cloudflare_zone_id
  name             = var.cloudflare_load_balancer_name
  fallback_pool_id = var.cloudflare_load_balancer_fallback_pool_id
  default_pool_ids = var.cloudflare_load_balancer_default_pool_ids
  description      = var.cloudflare_load_balancer_description
  proxied          = var.proxied
  steering_policy  = var.cloudflare_load_balancer_steering_policy
  tags             = var .tags
}

resource "cloudflare_record" "cf_record" {
  zone_id = var.cloudflare_zone_id
  name    = var.cloudflare_record_name
  value   = var.cloudflare_value
  type    = var.cloudflare_record_type
  ttl     = var.ttl
  proxied = var.proxied
  tags    = var.tags
}
