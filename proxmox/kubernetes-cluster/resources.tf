resource "proxmox_virtual_environment_vm" "vm_k3s_server_01" {
    name = "vm-k3s-server-01"
    node_name = "HYPERVISOR-02"
    vm_id = 301
    tags = ["kubernetes", "glusterfs", "ubuntu-2204"]
    on_boot = true
    started = true
    stop_on_destroy = true
    keyboard_layout = "en-gb"
    agent {
        enabled = true
    }
    clone {
        vm_id = 5001
        full = true
    }
    cpu {
        cores = 4
        sockets = 2
        type = "host"
        numa = true
        units = 1024
    }
    disk {
        datastore_id = "storage-01-zfs-iscsi"
        interface = "scsi0"
        size = 100
    }
    memory {
        dedicated = 8192
        floating  = 1024
    }
    network_device {
        bridge = "vmbr0"
        model = "virtio"
    }
    initialization {
        datastore_id = "storage-01-zfs-iscsi"
        interface = "ide0"
        ip_config {
            ipv4 {
                address = "192.168.10.191/24"
                gateway = "192.168.10.1"
            }
        }
    }
}
resource "proxmox_virtual_environment_vm" "vm_k3s_server_02" {
    name = "vm-k3s-server-02"
    node_name = "HYPERVISOR-02"
    vm_id = 302
    tags = ["kubernetes", "glusterfs", "ubuntu-2204"]
    on_boot = true
    started = true
    stop_on_destroy = true
    keyboard_layout = "en-gb"
    agent {
        enabled = true
    }
    clone {
        vm_id = 5001
        full = true
    }
    cpu {
        cores = 4
        sockets = 2
        type = "host"
        numa = true
        units = 1024
    }
    disk {
        datastore_id = "storage-01-zfs-iscsi"
        interface = "scsi0"
        size = 100
    }
    memory {
        dedicated = 8192
        floating  = 1024
    }
    network_device {
        bridge = "vmbr0"
        model = "virtio"
    }
    initialization {
        datastore_id = "storage-01-zfs-iscsi"
        interface = "ide0"
        ip_config {
            ipv4 {
                address = "192.168.10.192/24"
                gateway = "192.168.10.1"
            }
        }
    }
}
resource "proxmox_virtual_environment_vm" "vm_k3s_server_03" {
    name = "vm-k3s-server-03"
    node_name = "HYPERVISOR-02"
    vm_id = 303
    tags = ["kubernetes", "glusterfs", "ubuntu-2204"]
    on_boot = true
    started = true
    stop_on_destroy = true
    keyboard_layout = "en-gb"
    agent {
        enabled = true
    }
    clone {
        vm_id = 5001
        full = true
    }
    cpu {
        cores = 4
        sockets = 2
        type = "host"
        numa = true
        units = 1024
    }
    disk {
        datastore_id = "storage-01-zfs-iscsi"
        interface = "scsi0"
        size = 100
    }
    memory {
        dedicated = 8192
        floating  = 1024
    }
    network_device {
        bridge = "vmbr0"
        model = "virtio"
    }
    initialization {
        datastore_id = "storage-01-zfs-iscsi"
        interface = "ide0"
        ip_config {
            ipv4 {
                address = "192.168.10.193/24"
                gateway = "192.168.10.1"
            }
        }
    }
}
resource "proxmox_virtual_environment_vm" "vm_k3s_server_04" {
    name = "vm-k3s-server-04"
    node_name = "HYPERVISOR-02"
    vm_id = 304
    tags = ["kubernetes", "glusterfs", "ubuntu-2204"]
    on_boot = true
    started = true
    stop_on_destroy = true
    keyboard_layout = "en-gb"
    agent {
        enabled = true
    }
    clone {
        vm_id = 5001
        full = true
    }
    cpu {
        cores = 4
        sockets = 2
        type = "host"
        numa = true
        units = 1024
    }
    disk {
        datastore_id = "storage-01-zfs-iscsi"
        interface = "scsi0"
        size = 100
    }
    memory {
        dedicated = 8192
        floating  = 1024
    }
    network_device {
        bridge = "vmbr0"
        model = "virtio"
    }
    initialization {
        datastore_id = "storage-01-zfs-iscsi"
        interface = "ide0"
        ip_config {
            ipv4 {
                address = "192.168.10.194/24"
                gateway = "192.168.10.1"
            }
        }
    }
}
resource "proxmox_virtual_environment_vm" "vm_k3s_server_05" {
    name = "vm-k3s-server-05"
    node_name = "HYPERVISOR-02"
    vm_id = 305
    tags = ["kubernetes", "glusterfs", "ubuntu-2204"]
    on_boot = true
    started = true
    stop_on_destroy = true
    keyboard_layout = "en-gb"
    agent {
        enabled = true
    }
    clone {
        vm_id = 5001
        full = true
    }
    cpu {
        cores = 4
        sockets = 2
        type = "host"
        numa = true
        units = 1024
    }
    disk {
        datastore_id = "storage-01-zfs-iscsi"
        interface = "scsi0"
        size = 100
    }
    memory {
        dedicated = 8192
        floating  = 1024
    }
    network_device {
        bridge = "vmbr0"
        model = "virtio"
    }
    initialization {
        datastore_id = "storage-01-zfs-iscsi"
        interface = "ide0"
        ip_config {
            ipv4 {
                address = "192.168.10.195/24"
                gateway = "192.168.10.1"
            }
        }
    }
}