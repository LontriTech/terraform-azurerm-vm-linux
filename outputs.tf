output "linux_virtual_machine_id" {
  description = "ID of the deployed VM."
  value       = azurerm_linux_virtual_machine.virtual_machine.id
}

output "network_interface_id" {
  description = "ID of the deployed VM's NIC."
  value       = azurerm_network_interface.nic.id
}

output "network_interface_private_ip" {
  description = "Private IP address of the deployed VM's NIC."
  value       = azurerm_network_interface.nic.private_ip_address
}

output "applied_dns_servers" {
  description = "If the Virtual Machine using this Network Interface is part of an Availability Set, then this list will have the union of all DNS servers from all Network Interfaces that are part of the Availability Set."
  value       = azurerm_network_interface.nic.applied_dns_servers
}
