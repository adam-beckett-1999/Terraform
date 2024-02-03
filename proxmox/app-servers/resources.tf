resource "proxmox_vm_qemu" "vm_gameserver_management" {
    target_node = "phs-hv-01"
    vmid = "200"
    name = "VM-GAMESERVER-MANAGEMENT"
    tags = "app-server,game-server,docker,amp,pterodactyl"

    clone = "UBUNTU-22.04"
    full_clone = true

    onboot = true
    agent = 1
    cores = 4
    sockets = 2
    cpu = "host"
    memory = 16384

    disk {
        type = "scsi"
        storage = "pool-1"
        size = "200G"
    }

    network {
        bridge = "vmbr0"
        model = "virtio"
    }

    os_type = "cloud-init"
    ipconfig0 = "ip=192.168.0.170/24,gw=192.168.0.1"
    ciuser = var.vm_username
    cipassword = var.vm_password
    sshkeys = var.vm_ssh_key
    nameserver = "192.168.0.1"
}

resource "proxmox_vm_qemu" "vm_gameserver_node_01" {
    target_node = "phs-hv-01"
    vmid = "200"
    name = "VM-GAMESERVER-NODE-01"
    tags = "app-server,game-server,docker,pterodactyl-wings"

    clone = "UBUNTU-22.04"
    full_clone = true

    onboot = true
    agent = 1
    cores = 4
    sockets = 2
    cpu = "host"
    memory = 16384

    disk {
        type = "scsi"
        storage = "pool-1"
        size = "200G"
    }

    network {
        bridge = "vmbr0"
        model = "virtio"
    }

    os_type = "cloud-init"
    ipconfig0 = "ip=192.168.0.171/24,gw=192.168.0.1"
    ciuser = var.vm_username
    cipassword = var.vm_password
    sshkeys = var.vm_ssh_key
    nameserver = "192.168.0.1"
}

resource "proxmox_vm_qemu" "vm_gameserver_node_02" {
    target_node = "phs-hv-01"
    vmid = "200"
    name = "VM-GAMESERVER-NODE-02"
    tags = "app-server,game-server,docker,pterodactyl-wings"

    clone = "UBUNTU-22.04"
    full_clone = true

    onboot = true
    agent = 1
    cores = 4
    sockets = 2
    cpu = "host"
    memory = 16384

    disk {
        type = "scsi"
        storage = "pool-1"
        size = "200G"
    }

    network {
        bridge = "vmbr0"
        model = "virtio"
    }

    os_type = "cloud-init"
    ipconfig0 = "ip=192.168.0.172/24,gw=192.168.0.1"
    ciuser = var.vm_username
    cipassword = var.vm_password
    sshkeys = var.vm_ssh_key
    nameserver = "192.168.0.1"
}