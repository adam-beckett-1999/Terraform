resource "proxmox_vm_qemu" "vm_k3s_03" {
    target_node = "phs-hv-01"
    vmid = "213"
    name = "VM-K3S-03"
    tags = "app-server,kubernetes,rancher,longhorn"

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
        bridge = "vmbr0"
        model = "virtio"
    }

    os_type = "cloud-init"
    ipconfig0 = "ip=192.168.0.173/24,gw=192.168.0.1"
    ciuser = var.vm_username
    cipassword = var.vm_password
    sshkeys = var.vm_ssh_key
    nameserver = "192.168.0.210"
}
