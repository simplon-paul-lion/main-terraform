output "vnet_id" {
  value = azurerm_virtual_network.vnet.id
}

output "vnet_add_space" {
  value = azurerm_virtual_network.vnet.address_space
}