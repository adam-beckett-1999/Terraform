resource "proxmox_vm_qemu" "vm_swarm_01" {
    target_node = "phs-hv-01"
    vmid = "201"
    name = "VM-SWARM-01"
    tags = "docker,glusterfs,portainer"

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
        size = "200G"
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
