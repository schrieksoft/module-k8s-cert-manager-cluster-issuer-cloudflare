
data "azurerm_key_vault_secret" "this" {
  for_each = toset(
    [
      "cloudflare-api-token"
    ]
  )
  name         = each.key
  key_vault_id = var.utility_akv_id
}
