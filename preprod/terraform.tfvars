rgx = {
  rg1 = {
    name     = "k-rg2-dev"
    location = "japaneast"
  }
  rg2 = {
    name     = "k-rg3-dev"
    location = "japaneast"
  }
}



vnet = {
  vnet1 = {
    name                = "k-vnet02-dev"
    location            = "japaneast"
    resource_group_name = "k-rg2-dev"
    address_space       = ["10.0.0.0/16"]
  }
}

subnet = {
  subnet1 = {
    name                 = "frontend_subnet01-dev"
    virtual_network_name = "k-vnet02-dev"
    resource_group_name  = "k-rg2-dev"
    address_prefixes     = ["10.0.1.0/24"]
  }

  subnet2 = {
    name                 = "backend_subnet02-dev"
    virtual_network_name = "k-vnet02-dev"
    resource_group_name  = "k-rg2-dev"
    address_prefixes     = ["10.0.2.0/24"]
  }

  subnet3 = {
    name                 = "database_subnet03-dev"
    virtual_network_name = "k-vnet02-dev"
    resource_group_name  = "k-rg2-dev"
    address_prefixes     = ["10.0.3.0/24"]
  }
}

pip = {
  pip1 = {
    name                = "k-pip03-dev"
    resource_group_name = "k-rg2-dev"
    location            = "japaneast"
    allocation_method   = "Static"
  }

  pip2 = {
    name                = "k-pip04-dev"
    resource_group_name = "k-rg2-dev"
    location            = "japaneast"
    allocation_method   = "Static"
  }

  pip3 = {
    name                = "k-pip05-dev"
    resource_group_name = "k-rg2-dev"
    location            = "japaneast"
    allocation_method   = "Static"
  }
}

vms = {
  vm1 = {
    nic_name            = "frontend-nic-vm-014-dev"
    location            = "japaneast"
    resource_group_name = "k-rg2-dev"
    nic_subnet_name     = "frontend_subnet01-dev"
    nic_virtual_name    = "k-vnet02-dev"
    nic_pip_name        = "k-pip03-dev"
    vm_name             = "frontend-vm01-dev"
    vm_size             = "Standard_D2s_v3"
    admin_username      = "adminuser"
    admin_password      = "DevOps@123"
  }

  vm2 = {
    nic_name            = "backendend-nic-vm-013-dev"
    location            = "japaneast"
    resource_group_name = "k-rg2-dev"
    nic_subnet_name     = "backend_subnet02-dev"
    nic_virtual_name    = "k-vnet02-dev"
    nic_pip_name        = "k-pip04-dev"
    vm_name             = "backend-vm-dev"
    vm_size             = "Standard_D2s_v3"
    admin_username      = "adminuser"
    admin_password      = "DevOps@123"
  }

  vm3 = {
    nic_name            = "database-nic-vm01-dev"
    location            = "japaneast"
    resource_group_name = "k-rg2-dev"
    nic_subnet_name     = "database_subnet03-dev"
    nic_virtual_name    = "k-vnet02-dev"
    nic_pip_name        = "k-pip05-dev"
    vm_name             = "database-vm01-dev"
    vm_size             = "Standard_D2s_v3"
    admin_username      = "adminuser"
    admin_password      = "DevOps@123"
  }
  # github_token = "ghp_1234567890abcdefghijkldqqeqewwedqrstuvwxyzABCD"
}


basition = {
    Basition1={
        name="AzureBastionSubnet"
        resource_group_name="k-rg2-dev"
        virtual_network_name="k-vnet02-dev"
        address_prefixes= ["10.0.4.0/26"]
         public_ip_name = "k-bastion-pip-prod"
         location="japaneast"
         basition_name="k-basition-dev"
    }
}