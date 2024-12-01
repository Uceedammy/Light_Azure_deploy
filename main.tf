resource "azurerm_resource_group" "lightrsg" {
  name     = "lightrsg"
  location = "uscentral1"
}

resource "azurerm_virtual_network" "lightvnet" {
  name                = "lightvnet"
  address_space       = ["172.16.0.0/16"]
  location            = azurerm_resource_group.uscentral1.location
  resource_group_name = azurerm_resource_group.lightrsg
}