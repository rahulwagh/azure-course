resource "azurerm_service_plan" "dev_eu_north_service_plan" {
  name                = "dev-eu-north-func-test-service-plan"
  location            = azurerm_resource_group.dev_eu_north_function_app_rg.location
  resource_group_name = azurerm_resource_group.dev_eu_north_function_app_rg.name
  os_type             = "Linux"
  sku_name            = "S1"
}
