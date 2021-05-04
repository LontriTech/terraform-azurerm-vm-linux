resource "azurerm_resource_group" "rg" {
  name     = "example-resources"
  location = "West Europe"
}

resource "azurerm_virtual_network" "vnet" {
  name                = "example-network"
  address_space       = ["10.0.0.0/16"]
  location            = "West Europe"
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_subnet" "subnet" {
  name                 = "internal"
  address_prefixes     = ["10.0.2.0/24"]
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
}
