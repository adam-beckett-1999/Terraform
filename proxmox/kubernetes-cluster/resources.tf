resource "proxmox_virtual_environment_vm" "vm_k3s_server_01" {
    name = "VM-K3S-SERVER-01"
    node_name = "HYPERVISOR-02"
    vm_id = 201
    tags = ["kubernetes", "master", "glusterfs", "ubuntu-2204"]
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
    initialization {
        datastore_id = "local-lvm"
        interface = "ide0"
        ip_config {
            ipv4 {
                address = "192.168.0.171/24"
                gateway = "192.168.0.1"
            }
        }
    }
}
resource "proxmox_virtual_environment_vm" "vm_k3s_server_02" {
    name = "VM-K3S-SERVER-02"
    node_name = "HYPERVISOR-02"
    vm_id = 202
    tags = ["kubernetes", "worker", "glusterfs", "ubuntu-2204"]
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
    initialization {
        datastore_id = "local-lvm"
        interface = "ide0"
        ip_config {
            ipv4 {
                address = "192.168.0.172/24"
                gateway = "192.168.0.1"
            }
        }
    }
}
resource "proxmox_virtual_environment_vm" "vm_k3s_server_03" {
    name = "VM-K3S-SERVER-03"
    node_name = "HYPERVISOR-02"
    vm_id = 203
    tags = ["kubernetes", "worker", "glusterfs", "ubuntu-2204"]
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
    initialization {
        datastore_id = "local-lvm"
        interface = "ide0"
        ip_config {
            ipv4 {
                address = "192.168.0.173/24"
                gateway = "192.168.0.1"
            }
        }
    }
}
resource "proxmox_virtual_environment_vm" "vm_k3s_server_04" {
    name = "VM-K3S-SERVER-04"
    node_name = "HYPERVISOR-02"
    vm_id = 204
    tags = ["kubernetes", "worker", "glusterfs", "ubuntu-2204"]
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
    initialization {
        datastore_id = "local-lvm"
        interface = "ide0"
        ip_config {
            ipv4 {
                address = "192.168.0.174/24"
                gateway = "192.168.0.1"
            }
        }
    }
}
resource "proxmox_virtual_environment_vm" "vm_k3s_server_05" {
    name = "VM-K3S-SERVER-05"
    node_name = "HYPERVISOR-02"
    vm_id = 205
    tags = ["kubernetes", "worker", "glusterfs", "ubuntu-2204"]
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
    initialization {
        datastore_id = "local-lvm"
        interface = "ide0"
        ip_config {
            ipv4 {
                address = "192.168.0.175/24"
                gateway = "192.168.0.1"
            }
        }
    }
}