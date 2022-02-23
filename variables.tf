variable "cloudflare_email" {
  description = "The email associated with the account"
  type        = string
}

variable "cloudflare_api_key" {
  description = "The Cloudflare API key"
  type        = string
}

variable "cloudflare_zone_id" {
  description = "Cloudflare Zone ID"
  type        = string
}

variable "cloudflare_load_balancer_name" {
  description = "The DNS name (FQDN, including the zone) to associate with the load balancer."
  type        = string
}

variable "cloudflare_load_balancer_fallback_pool_id" {
  description = "The pool ID to use when all other pools are detected as unhealthy"
  type        = string
}

variable "cloudflare_load_balancer_default_pool_ids" {
  description = "A list of pool IDs ordered by their failover priority. Used whenever region/pop pools are not defined"
  type        = list(string)
}

variable "cloudflare_load_balancer_description" {
  description = "Cloudflare Load Balancer description"
  type        = string
}

variable "cloudflare_load_balancer_steering_policy" {
  description = "Determine which method the load balancer uses to determine the fastest route to your origin"
  type        = string
  default     = null
  validation {
    condition     = var.cloudflare_load_balancer_steering_policy == null || contains(["off", "geo", "dynamic_latency", "random", "proximity"], var.cloudflare_load_balancer_steering_policy == null ? "" : var.cloudflare_load_balancer_steering_policy)
    error_message = "The Cloudflare LB steering policy shall be one of the [off, geo, dynamic_latency, random, proximity]."
  }
}

variable "cloudflare_record_name" {
  description = "Cloudflare record name"
  type        = string
}

variable "cloudflare_value" {
  description = "The (string) value of the record"
  type        = string
}

variable "cloudflare_record_type" {
  description = "The type of the record"
  type        = string
}

variable "ttl" {
  description = "Time to live (TTL) of this load balancer's DNS"
  type        = number
  default     = 1
}

variable "proxied" {
  description = "Whether the hostname gets Cloudflare's origin protection"
  type        = bool
  default     = true
}
