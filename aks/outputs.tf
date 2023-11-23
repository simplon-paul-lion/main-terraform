output "kube_config_raw" {
  value = azurerm_kubernetes_cluster.aks.kube_config_raw
}

output "kubeconfig"{
  value = azurerm_kubernetes_cluster.aks.kube_config
}

output "aks_rg" {
  value = azurerm_kubernetes_cluster.aks.node_resource_group
  
}

