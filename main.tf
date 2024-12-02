resource "azurerm_resource_group" "US_EAST" {
  name     = "my-resource-group"
  location = "East US"
}

resource "azurerm_virtual_network" "lightvnet" {
  name                = "my-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.US_EAST.location
  resource_group_name = azurerm_resource_group.US_EAST.name
}