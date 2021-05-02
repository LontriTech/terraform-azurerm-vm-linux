output "virtual_network_name" {
  description = "The name of the virtual network."
  value       = azurerm_virtual_network.subnet.virtual_network_name
}

output "resource_group_name" {
  description = "The name of the resource group in which the virtual network was deployed."
  value       = azurerm_virtual_network.subnet.resource_group_name
}

output "subnet_name" {
  description = "The name of the subnet."
  value       = azurerm_virtual_network.subnet.name
}
