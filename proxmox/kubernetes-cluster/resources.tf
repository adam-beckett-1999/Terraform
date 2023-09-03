resource "proxmox_vm_qemu" "vm_k3s_master_01" {
    target_node = "phs-hv-01"
    vmid = "210"
    name = "VM-K3S-MASTER-01"
    tags = "kubernetes,portainer,master"

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
    ipconfig0 = "ip=192.168.0.171/24,gw=192.168.0.1"
    ciuser = var.vm_username
    cipassword = var.vm_password
    sshkeys = var.vm_ssh_key
    nameserver = "192.168.0.210"
}

resource "proxmox_vm_qemu" "vm_k3s_worker_01" {
    target_node = "phs-hv-01"
    vmid = "211"
    name = "VM-K3S-WORKER-01"
    tags = "kubernetes,portainer,worker"

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
    ipconfig0 = "ip=192.168.0.172/24,gw=192.168.0.1"
    ciuser = var.vm_username
    cipassword = var.vm_password
    sshkeys = var.vm_ssh_key
    nameserver = "192.168.0.210"
}

resource "proxmox_vm_qemu" "vm_k3s_worker_02" {
    target_node = "phs-hv-01"
    vmid = "212"
    name = "VM-K3S-WORKER-02"
    tags = "kubernetes,portainer,worker"

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
    ipconfig0 = "ip=192.168.0.173/24,gw=192.168.0.1"
    ciuser = var.vm_username
    cipassword = var.vm_password
    sshkeys = var.vm_ssh_key
    nameserver = "192.168.0.210"
}