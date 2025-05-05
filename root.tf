terraform {
  required_providers {
    kustomization = {
      source  = "kbst/kustomization"
      version = "0.9.6"
    }

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.20.0"
    }
  }
}