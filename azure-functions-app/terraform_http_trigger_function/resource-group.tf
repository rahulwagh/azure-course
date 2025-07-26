# Create a resource group
resource "azurerm_resource_group" "dev_eu_north_function_app_rg" {
  name     = "dev-eu-north-function-app-rg"
  location = "North Europe"
}