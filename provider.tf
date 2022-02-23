terraform {
  required_version = ">=0.13"

  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "3.7.0"
    }
  }
}

provider "cloudflare" {
  email   = var.cloudflare_email
  api_key = var.cloudflare_api_key
}
