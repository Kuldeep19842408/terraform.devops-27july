data "azurerm_virtual_network" "vnet" {
  for_each = var.basition
  name                = each.value.virtual_network_name
  resource_group_name = each.value.resource_group_name
}

resource "azurerm_subnet" "bastion" {
    for_each = var.basition
  name                 = each.value.name
  resource_group_name  = each.value.resource_group_name
  virtual_network_name = each.value.virtual_network_name
  address_prefixes     = each.value.address_prefixes
}

resource "azurerm_public_ip" "bastion" {
  for_each = var.basition
  name                = each.value.public_ip_name
  location            = each.value.location
  resource_group_name =each.value.resource_group_name

  allocation_method = "Static"
  sku               = "Standard"
}

resource "azurerm_bastion_host" "this" {
  for_each = var.basition

  name                = each.value.basition_name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  sku = "Standard"

  ip_configuration {

    name                 = "configuration"
    subnet_id            = azurerm_subnet.bastion[each.key].id
    public_ip_address_id = azurerm_public_ip.bastion[each.key].id

  }

}