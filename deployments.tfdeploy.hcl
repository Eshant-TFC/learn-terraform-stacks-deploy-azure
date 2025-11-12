# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

identity_token "azurerm" {
  audience = ["api://AzureADTokenExchange"]
}

deployment "development" {
  inputs = {
    identity_token = identity_token.azurerm.jwt

    regions = ["East US"]

    client_id = "f7fd7c3f-d501-4be2-baec-447f7ce00d1d"
subscription_id = "6f9240c3-54ea-4147-9381-c0ad57181a31"
tenant_id = "56f775a3-2540-4f05-ab58-72cd72d17d3e"
  }
}

deployment "production" {
  inputs = {
    identity_token = identity_token.azurerm.jwt

    regions = ["East US", "West US"]

    client_id = "f7fd7c3f-d501-4be2-baec-447f7ce00d1d"
subscription_id = "6f9240c3-54ea-4147-9381-c0ad57181a31"
tenant_id = "56f775a3-2540-4f05-ab58-72cd72d17d3e"
  }
}
