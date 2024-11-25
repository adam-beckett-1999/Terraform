resource "proxmox_virtual_environment_container" "lxc_ubuntu-test" {
    name = "lxc-ubuntu-24-test"
    node_name = "MINI-HYPERVISOR-01"
    vm_id = 2001
    tags = ["testing", "ubuntu-2404"]
    start_on_boot = true
    started = true
    cpu {
        cores = 4
        units = 1024
    }
    disk {
        datastore_id = "local-lvm"
        size = 20
    }
    memory {
        dedicated = 4096
        swap = 1024
    }
    network_interface {
        bridge = "vmbr0"
        name = "net0"
    }
    operating_system {
    template_file_id = storage-01-isos:vztml/ubuntu-24.04-standard_24.04-2_amd64.tar.zst
    type             = "ubuntu"
    }
    initialization {
        dns {
            domain = "hyvecloud.internal"
            server = "192.168.10.1"
        }
        hostname = "lxc-ubuntu-24-test"
        ip_config {
            ipv4 {
                address = "192.168.10.191/24"
                gateway = "192.168.10.1"
            }
        }
    }
}