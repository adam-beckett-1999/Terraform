provider "vsphere" {
  user     = var.user
  password = var.password
  vsphere_server = var.vcenter_server
  allow_unverified_ssl = true
}

data "vsphere_datacenter" "dc" {
  name = "Hyvecloud DC"
}

data "vsphere_resource_pool" "pool" {
  name          = "Cluster-01/Resources"
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_datastore" "datastore" {
  name          = "Storage-01-Datastore"
  datacenter_id = data.vsphere_datacenter.dc.id
}