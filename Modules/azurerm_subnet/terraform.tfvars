subnet = {
    subnet1={
        name="frontend_subnet01"
        virtual_network_name="k-vnet01"
        resource_group_name="k-rg1"
        address_prefixes=["10.0.1.0/24"]
    }

    subnet2={
        name="backend_subnet02"
        virtual_network_name="k-vnet01"
        resource_group_name="k-rg1"
        address_prefixes=["10.0.2.0/24"]
    }
}