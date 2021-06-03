
# Create a resource group
resource "azurerm_resource_group" "example" {
  name     = "${var.prefix} - example-resources"
  location = var.location
  tags = {
    	name = "Azure RSG"
    	owner = "Rajanikanth Nagelli" 
  }
}

# Create a virtual network within the resource group
resource "azurerm_virtual_network" "example" {
  name                = "${var.prefix} - example-network"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  address_space       = ["10.0.0.0/16"]
  tags = {
    	name = "Azure VNet"
    	owner = "Rajanikanth Nagelli" 
  }
}

