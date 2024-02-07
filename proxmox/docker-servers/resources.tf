resource "proxmox_virtual_environment_vm" "vm_docker_proxy" {
    name = "VM-DOCKER-PROXY"
    node_name = "HYPERVISOR-01"
    vm_id = 100
    tags = ["docker", "glusterfs", "reverse-proxy", "authentication", "ubuntu-2204"]
    on_boot = true
    started = true
    keyboard_layout = "en-gb"
    agent {
        enabled = true
    }
    clone {
        vm_id = 9000
        full = true
        node_name = "HYPERVISOR-01"
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
                address = "192.168.0.160/24"
                gateway = "192.168.0.1"
            }
        }
    }
}
resource "proxmox_virtual_environment_vm" "vm_docker_media" {
    name = "VM-DOCKER-MEDIA"
    node_name = "HYPERVISOR-01"
    vm_id = 101
    tags = ["docker", "glusterfs", "media", "ubuntu-2204"]
    on_boot = true
    started = true
    keyboard_layout = "en-gb"
    agent {
        enabled = true
    }
    clone {
        vm_id = 9000
        full = true
        node_name = "HYPERVISOR-01"
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
                address = "192.168.0.161/24"
                gateway = "192.168.0.1"
            }
        }
    }
}
resource "proxmox_virtual_environment_vm" "vm_docker_services" {
    name = "VM-DOCKER-SERVICES"
    node_name = "HYPERVISOR-01"
    vm_id = 102
    tags = ["docker", "glusterfs", "services", "ubuntu-2204"]
    on_boot = true
    started = true
    keyboard_layout = "en-gb"
    agent {
        enabled = true
    }
    clone {
        vm_id = 9000
        full = true
        node_name = "HYPERVISOR-01"
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
                address = "192.168.0.162/24"
                gateway = "192.168.0.1"
            }
        }
    }
}
resource "proxmox_virtual_environment_vm" "vm_docker_management" {
    name = "VM-DOCKER-MANAGEMENT"
    node_name = "HYPERVISOR-01"
    vm_id = 103
    tags = ["docker", "glusterfs", "management", "portainer", "ubuntu-2204"]
    on_boot = true
    started = true
    keyboard_layout = "en-gb"
    agent {
        enabled = true
    }
    clone {
        vm_id = 9000
        full = true
        node_name = "HYPERVISOR-01"
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
                address = "192.168.0.163/24"
                gateway = "192.168.0.1"
            }
        }
    }
}