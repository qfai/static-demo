terraform {
  backend "azurerm" {
    resource_group_name  = "iacdemo"
    storage_account_name = "contosobackend"
    container_name       = "exportdemo"
    key                  = "contoso.tfstate"
  }
}
