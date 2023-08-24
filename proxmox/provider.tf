terraform {
  required_version = ">= 0.13.0"
  required_providers {
    proxmox = {
      source = "telmate/proxmox"
      version = "2.9.3"
    }
  }
}
provider "proxmox" {
  pm_api_url = var.proxmox_api_url
  pm_user = var.proxmox_username
  pm_password = var.proxmox_password
  pm_tls_insecure = true
}
