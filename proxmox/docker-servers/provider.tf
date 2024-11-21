terraform {
  required_version = ">= 0.13.0"
  required_providers {
    proxmox = {
      source = "bpg/proxmox"
      version = "0.67.1"
    }
  }
}
provider "proxmox" {
  endpoint = var.proxmox_url
  username = var.proxmox_username
  password = var.proxmox_password
  insecure = true
}
