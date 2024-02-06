resource "proxmox_vm_qemu" "vm_docker_proxy" {
    target_node = "HYPERVISOR-01"
    vmid = "100"
    name = "VM-DOCKER-PROXY"
    tags = "docker,glusterfs,reverse-proxy,authentication,ubuntu-2204"

    clone = "UBUNTU-2204-TEMPLATE"
    full_clone = true

    onboot = true
    agent = 1
    cores = 4
    sockets = 2
    cpu = "host"
    memory = 8192

    disks {
        scsi {
            scsi0 {
                disk {
                    storage = "storage-01-iscsi"
                    size = 100
                }
            }
        }
        ide {
            ide0 {
                disk {
                    storage = "local-lvm"
                }
            }
        }
    }

    network {
        bridge = "vmbr0"
        model = "virtio"
    }

    os_type = "cloud-init"
    ciuser = var.vm_username
    cipassword = var.vm_password
    sshkeys = var.vm_ssh_key
    ipconfig0 = "ip=192.168.0.160/24,gw=192.168.0.1"
    nameserver = "192.168.0.1"
}

resource "proxmox_vm_qemu" "vm_docker_media" {
    target_node = "HYPERVISOR-01"
    vmid = "101"
    name = "VM-DOCKER-MEDIA"
    tags = "docker,glusterfs,media,ubuntu-2204"

    clone = "UBUNTU-2204-TEMPLATE"
    full_clone = true

    onboot = true
    agent = 1
    cores = 4
    sockets = 2
    cpu = "host"
    memory = 8192

    disks {
        scsi {
            scsi0 {
                disk {
                    storage = "storage-01-iscsi"
                    size = 100
                }
            }
        }
        ide {
            ide0 {
                disk {
                    storage = "local-lvm"
                }
            }
        }
    }

    network {
        bridge = "vmbr0"
        model = "virtio"
    }

    os_type = "cloud-init"
    ciuser = var.vm_username
    cipassword = var.vm_password
    sshkeys = var.vm_ssh_key
    ipconfig0 = "ip=192.168.0.161/24,gw=192.168.0.1"
    nameserver = "192.168.0.1"
}

resource "proxmox_vm_qemu" "vm_docker_services" {
    target_node = "HYPERVISOR-01"
    vmid = "102"
    name = "VM-DOCKER-SERVICES"
    tags = "docker,glusterfs,services,ubuntu-2204"

    clone = "UBUNTU-2204-TEMPLATE"
    full_clone = true

    onboot = true
    agent = 1
    cores = 4
    sockets = 2
    cpu = "host"
    memory = 8192

    disks {
        scsi {
            scsi0 {
                disk {
                    storage = "storage-01-iscsi"
                    size = 100
                }
            }
        }
        ide {
            ide0 {
                disk {
                    storage = "local-lvm"
                }
            }
        }
    }

    network {
        bridge = "vmbr0"
        model = "virtio"
    }

    os_type = "cloud-init"
    ciuser = var.vm_username
    cipassword = var.vm_password
    sshkeys = var.vm_ssh_key
    ipconfig0 = "ip=192.168.0.162/24,gw=192.168.0.1"
    nameserver = "192.168.0.1"
}

resource "proxmox_vm_qemu" "vm_docker_management" {
    target_node = "HYPERVISOR-01"
    vmid = "103"
    name = "VM-DOCKER-MANAGEMENT"
    tags = "docker,glusterfs,management,monitoring,ubuntu-2204"

    clone = "UBUNTU-2204-TEMPLATE"
    full_clone = true

    onboot = true
    agent = 1
    cores = 4
    sockets = 2
    cpu = "host"
    memory = 8192

    disks {
        scsi {
            scsi0 {
                disk {
                    storage = "storage-01-iscsi"
                    size = 100
                }
            }
        }
        ide {
            ide0 {
                disk {
                    storage = "local-lvm"
                }
            }
        }
    }

    network {
        bridge = "vmbr0"
        model = "virtio"
    }

    os_type = "cloud-init"
    ciuser = var.vm_username
    cipassword = var.vm_password
    sshkeys = var.vm_ssh_key
    ipconfig0 = "ip=192.168.0.163/24,gw=192.168.0.1"
    nameserver = "192.168.0.1"
}
