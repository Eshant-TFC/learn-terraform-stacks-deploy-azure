# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

variable "regions" {
  type = set(string)
}

variable "identity_token" {
  type      = string
  ephemeral = true
}

variable "subscription_id" {
  type = string
  sensitive   = true
  ephemeral   = true
}

variable "client_id" {
  type = string
  sensitive   = true
  ephemeral   = true
}

variable "client_secret" {
  type = string
  sensitive   = true
  ephemeral   = true
}

variable "tenant_id" {
  type = string
  sensitive   = true
  ephemeral   = true
}

