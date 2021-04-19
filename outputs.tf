output "linux_virtual_machine_id" {
  description = "ID of the deployed VM."
  value       = azurerm_linux_virtual_machine.virtual_machine.id
}

output "network_interface_id" {
  description = "ID of the deployed VM's NIC."
  value       = azurerm_network_interface.network_interface.id
}

output "network_interface_private_ip" {
  description = "Private IP address of the deployed VM's NIC."
  value       = azurerm_network_interface.network_interface.private_ip_address
}
