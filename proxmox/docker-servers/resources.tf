resource "proxmox_virtual_environment_vm" "vm_docker_proxy" {
    name = "VM-DOCKER-PROXY"
    node_name = "HYPERVISOR-01"
    vm_id = 101
    tags = ["docker", "glusterfs", "webmin", "ubuntu-22.04"]
    description = "Docker Host, with GlusterFS distributed filesystem and Webmin for management. This node runs the reverse proxy and associated services."
    on_boot = true
    started = false
    keyboard_layout = "en-gb"
    agent {
        enabled = true
    }
    clone {
        vm_id = 9000
        full = true
    }
    cpu {
        cores = 4
        sockets = 2
    }
    disk {
        datastore_id = "storage-01-zfs-iscsi"
        interface = "scsi0"
        size = 100
    }
    memory {
        dedicated = 8192
    }
    network_device {
        bridge = "vmbr0"
        model = "virtio"
        mac_address = "BC:24:11:1B:55:7A"
    }
    network_device {
        bridge = "vmbr1"
        model = "virtio"
        mac_address = "BC:24:11:BC:9E:DA"
    }
    initialization {
        datastore_id = "local-lvm"
        interface = "ide0"
        ip_config {
            ipv4 {
                address = "192.168.10.161/24"
                gateway = "192.168.10.1"
            }
        }
        ip_config {
            ipv4 {
                address = "192.168.20.161/24"
                gateway = "192.168.20.1"
            }
        }
    }
}
resource "proxmox_virtual_environment_vm" "vm_docker_management" {
    name = "VM-DOCKER-MANAGEMENT"
    node_name = "HYPERVISOR-01"
    vm_id = 102
    tags = ["docker", "glusterfs", "webmin", "ubuntu-22.04"]
    description = "Docker Host, with GlusterFS distributed filesystem and Webmin for management. This node runs the management and monitoring services for the network."
    on_boot = true
    started = false
    keyboard_layout = "en-gb"
    agent {
        enabled = true
    }
    clone {
        vm_id = 9000
        full = true
    }
    cpu {
        cores = 4
        sockets = 2
    }
    disk {
        datastore_id = "storage-01-zfs-iscsi"
        interface = "scsi0"
        size = 100
    }
    memory {
        dedicated = 8192
    }
    network_device {
        bridge = "vmbr0"
        model = "virtio"
        mac_address = "BC:24:11:28:0A:42"
    }
    network_device {
        bridge = "vmbr1"
        model = "virtio"
        mac_address = "BC:24:11:CA:FC:E6"
    }
    initialization {
        datastore_id = "local-lvm"
        interface = "ide0"
        ip_config {
            ipv4 {
                address = "192.168.10.162/24"
                gateway = "192.168.10.1"
            }
        }
        ip_config {
            ipv4 {
                address = "192.168.20.162/24"
                gateway = "192.168.20.1"
            }
        }
    }
}
resource "proxmox_virtual_environment_vm" "vm_docker_media" {
    name = "VM-DOCKER-MEDIA"
    node_name = "HYPERVISOR-01"
    vm_id = 103
    tags = ["docker", "glusterfs", "webmin", "ubuntu-22.04"]
    description = "Docker Host, with GlusterFS distributed filesystem and Webmin for management. This node runs media hosting, serving and management services for the network."
    on_boot = true
    started = false
    keyboard_layout = "en-gb"
    agent {
        enabled = true
    }
    clone {
        vm_id = 9000
        full = true
    }
    cpu {
        cores = 4
        sockets = 2
    }
    disk {
        datastore_id = "storage-01-zfs-iscsi"
        interface = "scsi0"
        size = 100
    }
    memory {
        dedicated = 8192
    }
    network_device {
        bridge = "vmbr0"
        model = "virtio"
        mac_address = "BC:24:11:7C:B6:23"
    }
    network_device {
        bridge = "vmbr1"
        model = "virtio"
        mac_address = "BC:24:11:BA:42:52"
    }
    initialization {
        datastore_id = "local-lvm"
        interface = "ide0"
        ip_config {
            ipv4 {
                address = "192.168.10.163/24"
                gateway = "192.168.10.1"
            }
        }
        ip_config {
            ipv4 {
                address = "192.168.20.163/24"
                gateway = "192.168.20.1"
            }
        }
    }
}
resource "proxmox_virtual_environment_vm" "vm_docker_services" {
    name = "VM-DOCKER-SERVICES"
    node_name = "HYPERVISOR-01"
    vm_id = 104
    tags = ["docker", "glusterfs", "webmin", "ubuntu-22.04"]
    description = "Docker Host, with GlusterFS distributed filesystem and Webmin for management. This node runs various web-services and hosted applications."
    on_boot = true
    started = false
    keyboard_layout = "en-gb"
    agent {
        enabled = true
    }
    clone {
        vm_id = 9000
        full = true
    }
    cpu {
        cores = 4
        sockets = 2
    }
    disk {
        datastore_id = "storage-01-zfs-iscsi"
        interface = "scsi0"
        size = 100
    }
    memory {
        dedicated = 8192
    }
    network_device {
        bridge = "vmbr0"
        model = "virtio"
        mac_address = "BC:24:11:C3:E0:98"
    }
    network_device {
        bridge = "vmbr1"
        model = "virtio"
        mac_address = "BC:24:11:A0:08:46"
    }
    initialization {
        datastore_id = "local-lvm"
        interface = "ide0"
        ip_config {
            ipv4 {
                address = "192.168.10.164/24"
                gateway = "192.168.10.1"
            }
        }
        ip_config {
            ipv4 {
                address = "192.168.20.164/24"
                gateway = "192.168.20.1"
            }
        }
    }
}
