resource "azurerm_kubernetes_cluster" "aks" {
  
  name                = format("%s-aks", var.name)
  location            = var.location
  resource_group_name = var.name
  dns_prefix          = format("%s-aks", var.name)
  node_resource_group = format("%s-aks-rg")
  default_node_pool {
    name       = var.aks_node_pool_config.default.name
    node_count = var.aks_node_pool_config.default.node_count
    vm_size    = var.aks_node_pool_config.default.vm_size
    
  }

  identity {
    type = "SystemAssigned"
  }

  
}

# resource "azurerm_public_ip" "nginx_ingress" {
#   name                         = "nginx-ingress-pip"
#   location                     = azurerm_kubernetes_cluster.aks.location
#   resource_group_name          = azurerm_kubernetes_cluster.aks.node_resource_group
#   allocation_method            = "Static"
#   domain_name_label            = var.domain_name_label
# }

