module cert_manager_cluster_issuer {
  source = "github.com/schrieksoft/module-kustomization.git?ref=main"
  absolute_paths = ["${path.root}/manifests"]
  secret_generators = [
    {
      name  = "cloudflare"
      namespace = "cert-manager"
      literals = [
        "cloudflare-api-token=${data.azurerm_key_vault_secret.this["cloudflare-api-token"].value}",
      ]
      options = {
        disable_name_suffix_hash = true
      }
    }
  ]
}
