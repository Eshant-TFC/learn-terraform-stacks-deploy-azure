# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

identity_token "azurerm" {
  audience = ["api://AzureADTokenExchange"]
}

store "varset" "tokens" {
  name     = "VAR_STACKS_AZURE"
  category = "env"
}


deployment "development" {
  inputs = {
    identity_token = identity_token.azurerm.jwt

    regions = ["East US"]

client_secret    = store.varset.tokens.ARM_CLIENT_SECRET
#client_id    = store.varset.tokens.ARM_CLIENT_ID   
client_id = "ce761cbb-ce4b-4451-9eac-08c4fadd9b7f"
subscription_id    = store.varset.tokens.ARM_SUBSCRIPTION_ID
    tenant_id = store.varset.tokens.ARM_TENANT_ID
  }
}

deployment "production" {
  inputs = {
    identity_token = identity_token.azurerm.jwt

    regions = ["East US", "West US"]

client_secret    = store.varset.tokens.ARM_CLIENT_SECRET
#client_id    = store.varset.tokens.ARM_CLIENT_ID
client_id = "ce761cbb-ce4b-4451-9eac-08c4fadd9b7f"
    subscription_id   = store.varset.tokens.ARM_SUBSCRIPTION_ID
    tenant_id = store.varset.tokens.ARM_TENANT_ID

  }
}
