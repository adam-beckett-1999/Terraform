resource "proxmox_vm_qemu" "vm_docker_proxy" {
    target_node = "phs-hv-01"
    vmid = "200"
    name = "VM-DOCKER-PROXY"
    tags = "docker,glusterfs,portainer,reverse-proxy"

    clone = "UBUNTU-22.04"
    full_clone = true

    onboot = true
    agent = 1
    cores = 2
    sockets = 2
    cpu = "host"
    memory = 4096

    disk {
        type = "scsi"
        storage = "pool-1"
        size = "100G"
    }

    network {
        bridge = "vmbr1"
        model = "virtio"
    }

    os_type = "cloud-init"
    ipconfig0 = "ip=192.168.0.160/24,gw=192.168.0.1"
    ciuser = var.vm_username
    cipassword = var.vm_password
    sshkeys = var.vm_ssh_key
    nameserver = "192.168.0.210"
}

resource "proxmox_vm_qemu" "vm_docker_media" {
    target_node = "phs-hv-01"
    vmid = "201"
    name = "VM-DOCKER-MEDIA"
    tags = "docker,glusterfs,portainer,media"

    clone = "UBUNTU-22.04"
    full_clone = true

    onboot = true
    agent = 1
    cores = 4
    sockets = 2
    cpu = "host"
    memory = 8192

    disk {
        type = "scsi"
        storage = "pool-1"
        size = "100G"
    }

    network {
        bridge = "vmbr1"
        model = "virtio"
    }

    os_type = "cloud-init"
    ipconfig0 = "ip=192.168.0.161/24,gw=192.168.0.1"
    ciuser = var.vm_username
    cipassword = var.vm_password
    sshkeys = var.vm_ssh_key
    nameserver = "192.168.0.210"
}

resource "proxmox_vm_qemu" "vm_docker_services" {
    target_node = "phs-hv-01"
    vmid = "202"
    name = "VM-DOCKER-SERVICES"
    tags = "docker,glusterfs,portainer,services"

    clone = "UBUNTU-22.04"
    full_clone = true

    onboot = true
    agent = 1
    cores = 4
    sockets = 2
    cpu = "host"
    memory = 8192

    disk {
        type = "scsi"
        storage = "pool-1"
        size = "100G"
    }

    network {
        bridge = "vmbr1"
        model = "virtio"
    }

    os_type = "cloud-init"
    ipconfig0 = "ip=192.168.0.162/24,gw=192.168.0.1"
    ciuser = var.vm_username
    cipassword = var.vm_password
    sshkeys = var.vm_ssh_key
    nameserver = "192.168.0.210"
}

resource "proxmox_vm_qemu" "vm_docker_management" {
    target_node = "phs-hv-01"
    vmid = "203"
    name = "VM-DOCKER-MANAGEMENT"
    tags = "docker,glusterfs,portainer,management"

    clone = "UBUNTU-22.04"
    full_clone = true

    onboot = true
    agent = 1
    cores = 4
    sockets = 2
    cpu = "host"
    memory = 8192

    disk {
        type = "scsi"
        storage = "pool-1"
        size = "100G"
    }

    network {
        bridge = "vmbr1"
        model = "virtio"
    }

    os_type = "cloud-init"
    ipconfig0 = "ip=192.168.0.163/24,gw=192.168.0.1"
    ciuser = var.vm_username
    cipassword = var.vm_password
    sshkeys = var.vm_ssh_key
    nameserver = "192.168.0.210"
}
