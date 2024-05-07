terraform {
  backend "azurerm" {
    resource_group_name  = "IacAutomationTest"
    storage_account_name = "iacautomationbackend"
    container_name       = "staticdemo"
    key                  = "firstsite.tfstate"
  }
}
