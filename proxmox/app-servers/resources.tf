resource "proxmox_virtual_environment_vm" "vm_app_server-01" {
    name = "vm-app-server-01"
    node_name = "HYPERVISOR-02"
    vm_id = 201
    tags = ["nextcloud", "webmin", "ubuntu-22.04"]
    description = "Ubuntu server running Nextcloud, and Webmin for management."
    on_boot = true
    started = false
    keyboard_layout = "en-gb"
    agent {
        enabled = true
    }
    clone {
        vm_id = 10000
        full = true
    }
    cpu {
        cores = 4
        sockets = 2
    }
    disk {
        datastore_id = "storage-01-iscsi"
        interface = "scsi0"
        size = 100
    }
    memory {
        dedicated = 8192
    }
    network_device {
        bridge = "vmbr0"
        model = "virtio"
    }
    network_device {
        bridge = "vmbr1"
        model = "virtio"
    }
    initialization {
        datastore_id = "local-lvm"
        interface = "ide0"
        ip_config {
            ipv4 {
                address = "192.168.10.171/24"
                gateway = "192.168.10.1"
            }
            ipv4 {
                address = "192.168.20.171/24"
                gateway = "192.168.20.1"
            }
        }
    }
}
resource "proxmox_virtual_environment_vm" "vm_app_server-02" {
    name = "vm-app-server-02"
    node_name = "HYPERVISOR-02"
    vm_id = 202
    tags = ["kasm", "webmin", "ubuntu-22.04"]
    description = "Ubuntu server running Kasm, and Webmin for management."
    on_boot = true
    started = false
    keyboard_layout = "en-gb"
    agent {
        enabled = true
    }
    clone {
        vm_id = 10000
        full = true
    }
    cpu {
        cores = 4
        sockets = 2
    }
    disk {
        datastore_id = "storage-01-iscsi"
        interface = "scsi0"
        size = 100
    }
    memory {
        dedicated = 8192
    }
    network_device {
        bridge = "vmbr0"
        model = "virtio"
    }
    network_device {
        bridge = "vmbr1"
        model = "virtio"
    }
    initialization {
        datastore_id = "local-lvm"
        interface = "ide0"
        ip_config {
            ipv4 {
                address = "192.168.10.172/24"
                gateway = "192.168.10.1"
            }
            ipv4 {
                address = "192.168.20.172/24"
                gateway = "192.168.20.1"
            }
        }
    }
}