resource "azurerm_resource_group" "lightrsg" {
  name     = "lightrsg"
  location = "US EAST"
}

resource "azurerm_virtual_network" "lightvnet" {
  name                = "lightvnet"
  address_space       = ["172.16.0.0/16"]
  location            = azurerm_resource_group.US_EAST.location
  resource_group_name = azurerm_resource_group.lightrsg
}