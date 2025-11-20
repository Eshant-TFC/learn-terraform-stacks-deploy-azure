# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

required_providers {
  azurerm = {
    source  = "hashicorp/azurerm"
    version = "~> 4.45"
  }
  random = {
    source  = "hashicorp/random"
    version = "~> 3.7.2"
  }
  tls = {
    source  = "hashicorp/tls"
    version = "~> 4.1.0"
  }
}

provider "azurerm" "configurations" {
  for_each = var.regions

  config {
    features {
      resource_group {
        prevent_deletion_if_contains_resources = false
      }
    }

    environment     = "public"
    use_cli         = false
    #use_oidc        = true
    #oidc_token      = var.identity_token
    subscription_id = var.subscription_id
    #client_id       = var.client_id
     client_id = "ce761cbb-ce4b-4451-9eac-08c4fadd9b7f"
    tenant_id       = var.tenant_id
    client_secret   = var.client_secret
  }
}

provider "random" "this" {}
provider "tls" "this" {}
