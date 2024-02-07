terraform {
  required_version = ">= 0.13.0"
  required_providers {
    proxmox = {
      source = "bpg/proxmox"
      version = "0.46.2"
    }
  }
}
provider "proxmox" {
  endpoint = var.proxmox_url
  username = var.proxmox_username
  password = var.proxmox_password
  insecure = true
}
