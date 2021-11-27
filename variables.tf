variable "function_app_name" {
  type        = string
  description = "The name of the Function App to create."
}

variable "app_service_plan_name" {
  type        = string
  description = "The name of the App Service Plan to create."
}

variable "storage_account_name" {
  type        = string
  description = "The name of the Storage Account to create."
}

variable "app_insights_name" {
  type        = string
  description = "The name of the Application Insights to create."
}

variable "workspace_name" {
  type        = string
  description = "The name of the Log Analytics Workspace to create."
}

variable "resource_group_name" {
  type        = string
  description = "Resource group name to be added."
}

variable "location" {
  type        = string
  description = "Azure region to create resources."
}

variable "subscription_id" {
  type        = string
  description = "The Subscription ID that contains the target App Service"
}

variable "mail_address" {
  type        = string
  description = "Email address for ACME account."
}

variable "acme_endpoint" {
  type        = string
  description = "Certification authority ACME Endpoint."
  default     = "https://acme-v02.api.letsencrypt.org/"
}

variable "environment" {
  type        = string
  description = "The name of the Azure environment."
  default     = "AzureCloud"
}

variable "time_zone" {
  type        = string
  description = "The name of time zone as the basis for automatic update timing."
  default     = "UTC"
}

locals {
  acmebot_app_settings = {
    "Acmebot:SubscriptionId" = var.subscription_id
    "Acmebot:Contacts"       = var.mail_address
    "Acmebot:Endpoint"       = var.acme_endpoint
    "Acmebot:Environment"    = var.environment
  }
}