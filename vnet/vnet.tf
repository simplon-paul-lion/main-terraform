resource "azurerm_virtual_network" "vnet" {
  name                = format("%s-vnet",var.name)
  resource_group_name = var.resource_group_name
  location            = var.location
  address_space       = var.cidr
}