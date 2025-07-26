resource "azurerm_linux_function_app" "dev_eu_north_function_app_http_trigger" {
  name                = "dev-eu-north-function-app-http-triiger"
  location            = azurerm_resource_group.dev_eu_north_function_app_rg.location
  resource_group_name = azurerm_resource_group.dev_eu_north_function_app_rg.name
  service_plan_id     = azurerm_service_plan.dev_eu_north_service_plan.id

  storage_account_name       = azurerm_storage_account.dev_eu_north_function_storage_acc.name
  storage_account_access_key = azurerm_storage_account.dev_eu_north_function_storage_acc.primary_access_key

  site_config {
    application_stack {
      python_version = "3.9"
    }
  }
}

resource "azurerm_function_app_function" "dev_eu_north_function_app_function_http_trigger" {
  name            = "dev-eu-north-function-http-trigger"
  function_app_id = azurerm_linux_function_app.dev_eu_north_function_app_http_trigger.id
  language        = "Python"
  test_data = jsonencode({
    "name" = "Azure"
  })
  config_json = jsonencode({
    "bindings" = [
      {
        "authLevel" = "function"
        "direction" = "in"
        "methods" = [
          "get",
          "post",
        ]
        "name" = "req"
        "type" = "httpTrigger"
      },
      {
        "direction" = "out"
        "name"      = "$return"
        "type"      = "http"
      },
    ]
  })
}
