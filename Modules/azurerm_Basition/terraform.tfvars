basition = {
    Basition={
        name="AzureBastionSubnet"
        resource_group_name="k-rg2"
        virtual_network_name="k-vnet02"
        address_prefixes= ["10.0.4.0/26"]
         public_ip_name = "k-bastion-pip-prod"
         location="japaneast"
         basition_name="Basition"
    }
}