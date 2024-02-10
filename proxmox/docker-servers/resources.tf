resource "proxmox_virtual_environment_vm" "vm_docker_server-01" {
    name = "VM-DOCKER-SERVER-01"
    node_name = "HYPERVISOR-01"
    vm_id = 101
    tags = ["docker", "glusterfs", "ubuntu-2204"]
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
resource "proxmox_virtual_environment_vm" "vm_docker_server_02" {
    name = "VM-DOCKER-SERVER-02"
    node_name = "HYPERVISOR-01"
    vm_id = 102
    tags = ["docker", "glusterfs", "ubuntu-2204"]
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
resource "proxmox_virtual_environment_vm" "vm_docker_server_03" {
    name = "VM-DOCKER-SERVER-03"
    node_name = "HYPERVISOR-01"
    vm_id = 103
    tags = ["docker", "glusterfs", "ubuntu-2204"]
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
resource "proxmox_virtual_environment_vm" "vm_docker_server-04" {
    name = "VM-DOCKER-SERVER-04"
    node_name = "HYPERVISOR-01"
    vm_id = 104
    tags = ["docker", "glusterfs", "portainer", "ubuntu-2204"]
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
                address = "192.168.0.164/24"
                gateway = "192.168.0.1"
            }
        }
    }
}