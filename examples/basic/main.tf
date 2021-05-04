module "example-vm-linux-basic" {
  source = "../.."

  virtual_machine_name = "example"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  subnet_name          = azurerm_subnet.subnet.name
  location             = azurerm_resource_group.rg.location
  depends_on = [
    azurerm_resource_group.rg,
    azurerm_subnet.subnet,
    ]
}
