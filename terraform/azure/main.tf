resource "azurerm_resource_group" "monitoring" {
  name     = "rg-security-monitoring"
  location = "East US"
}


resource "azurerm_monitor_action_group" "security_team" {
  name                = "security-action-group"
  resource_group_name = azurerm_resource_group.monitoring.name
  short_name          = "secag"

  email_receiver {
    name          = "security-team"
    email_address = "security@example.com"
  }
}


resource "azurerm_log_analytics_workspace" "law" {
  name                = "law-security-monitoring"
  location            = azurerm_resource_group.monitoring.location
  resource_group_name = azurerm_resource_group.monitoring.name
  sku                 = "PerGB2018"
  retention_in_days   = 30
}

data "azurerm_subscription" "current" {}

resource "azurerm_monitor_diagnostic_setting" "activity_logs" {
  name                       = "activity-to-law"
  target_resource_id         = data.azurerm_subscription.current.id
  log_analytics_workspace_id = azurerm_log_analytics_workspace.law.id

  enabled_log {
    category = "Administrative"
  }

  enabled_log {
    category = "Security"
  }

  enabled_log {
    category = "ServiceHealth"
  }

  enabled_log {
    category = "Alert"
  }

  enabled_log {
    category = "Recommendation"
  }

  enabled_log {
    category = "Policy"
  }

  enabled_log {
    category = "Autoscale"
  }

  enabled_log {
    category = "ResourceHealth"
  }
}


resource "azurerm_monitor_activity_log_alert" "vm_create_alert" {
  name                = "vm-create-alert"
  resource_group_name = azurerm_resource_group.monitoring.name
  scopes              = [data.azurerm_subscription.current.id]
  description         = "Alert when a VM is created"

  criteria {
    category       = "Administrative"
    operation_name = "Microsoft.Compute/virtualMachines/write"
  }

  action {
    action_group_id = azurerm_monitor_action_group.security_team.id
  }
}
