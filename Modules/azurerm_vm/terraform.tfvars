vms = {
  vm1 = {
    nic_name         = "frontend-nic-vm-011"
    location         = "japaneast"
    resource_group_name          = "k-rg1"
    nic_subnet_name  = "frontend_subnet01"
    nic_virtual_name = "k-vnet01"
    nic_pip_name     = "k-pip01"
    vm_name          = "frontend-vm01"
    vm_size          = "Standard_D2s_v3"
    admin_username   = "adminuser"
    admin_password   = "DevOps@123"

  }

  vm2 = {
    nic_name            = "backendend-nic-vm-012"
    location        = "japaneast"
    resource_group_name = "k-rg1"
    nic_subnet_name     = "backend_subnet02"
    nic_virtual_name    = "k-vnet01"
    nic_pip_name        = "k-pip02"
    vm_name             = "backend-vm"
    vm_size             = "Standard_D2s_v3"
    admin_username      = "adminuser"
    admin_password      = "DevOps@123"


  }
}
