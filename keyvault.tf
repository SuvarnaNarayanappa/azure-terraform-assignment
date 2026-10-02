data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "kv" {
  name                = "${var.prefix}-keyvault-12345"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  tenant_id = data.azurerm_client_config.current.tenant_id

  sku_name = "standard"

  # Enable Azure RBAC authorization
  rbac_authorization_enabled = true

  soft_delete_retention_days = 7

  tags = {
    Environment = "Assignment"
    ManagedBy   = "Terraform"
  }
}