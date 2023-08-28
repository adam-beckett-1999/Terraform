resource "vm_lb_01" {
    target_node = "phs-hv-01"
    vmid = "200"
    name = "VM-LB-01"
    tags = "docker,glusterfs,portainer,load-balancer,reverse-proxy"

    clone = "UBUNTU-22.04"
    full_clone = true

    onboot = true
    agent = 1
    cores = 4
    sockets = 1
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

resource "vm_swarm_01" {
    target_node = "phs-hv-01"
    vmid = "201"
    name = "VM-SWARM-01"
    tags = "docker,glusterfs,portainer"

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
    ipconfig0 = "ip=192.168.0.161/24,gw=192.168.0.1"
    ciuser = var.vm_username
    cipassword = var.vm_password
    sshkeys = var.vm_ssh_key
    nameserver = "192.168.0.210"
}

resource "vm_swarm_02" {
    target_node = "phs-hv-01"
    vmid = "202"
    name = "VM-SWARM-02"
    tags = "docker,glusterfs,portainer"

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
    ipconfig0 = "ip=192.168.0.162/24,gw=192.168.0.1"
    ciuser = var.vm_username
    cipassword = var.vm_password
    sshkeys = var.vm_ssh_key
    nameserver = "192.168.0.210"
}

resource "vm_swarm_03" {
    target_node = "phs-hv-01"
    vmid = "203"
    name = "VM-SWARM-03"
    tags = "docker,glusterfs,portainer"

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
    ipconfig0 = "ip=192.168.0.163/24,gw=192.168.0.1"
    ciuser = var.vm_username
    cipassword = var.vm_password
    sshkeys = var.vm_ssh_key
    nameserver = "192.168.0.210"
}