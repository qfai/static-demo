
import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac142-rg"
  to = module.base.azurerm_resource_group.rg
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac142-rg/providers/Microsoft.AzureStackHCI/clusters/iac142-cl?api-version=2023-08-01-preview"
  to = module.base.module.hci0.azapi_resource.cluster
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac142-rg/providers/Microsoft.AzureStackHCI/clusters/iac142-cl/deploymentSettings/default?api-version=2023-08-01-preview"
  to = module.base.module.hci0.azapi_resource.validatedeploymentsetting_seperate[0]
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac142-rg/providers/Microsoft.Storage/storageAccounts/iac142wit56"
  to = module.base.module.hci0.azurerm_storage_account.witness
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac142-rg/providers/Microsoft.KeyVault/vaults/iac142-kv-56"
  to = module.base.module.hci0.azurerm_key_vault.DeploymentKeyVault
}

import {
  id = "56,10,99"
  to = module.base.module.hci0.random_integer.random_suffix
}

import {
  id = "https://iac142-kv-56.vault.azure.net/secrets/AzureStackLCMUserCredential/31a446f128204105a486cf9913935c8c"
  to = module.base.module.hci0.azurerm_key_vault_secret.AzureStackLCMUserCredential
}

import {
  id = "https://iac142-kv-56.vault.azure.net/secrets/LocalAdminCredential/f068271693b74f57af917f6ede4952b9"
  to = module.base.module.hci0.azurerm_key_vault_secret.LocalAdminCredential
}

import {
  id = "https://iac142-kv-56.vault.azure.net/secrets/DefaultARBApplication/ce6f62b889dc4738beb732776d642e29"
  to = module.base.module.hci0.azurerm_key_vault_secret.DefaultARBApplication
}

import {
  id = "https://iac142-kv-56.vault.azure.net/secrets/WitnessStorageKey/b105236bdd804af88c076434b7a8a590"
  to = module.base.module.hci0.azurerm_key_vault_secret.WitnessStorageKey
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac142-rg/providers/Microsoft.Authorization/roleAssignments/4c92d24a-86e4-af20-9ca2-3a2f571543d1"
  to = module.base.module.hci0.module.serverRoleBindings["AzSHOST2"].azurerm_role_assignment.MachineRoleAssign["KVSU"]
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac142-rg/providers/Microsoft.Authorization/roleAssignments/209f22c7-57ee-8643-dcbf-9006f8df3aa6"
  to = module.base.module.hci0.module.serverRoleBindings["AzSHOST1"].azurerm_role_assignment.MachineRoleAssign["ACMRM"]
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac142-rg/providers/Microsoft.Authorization/roleAssignments/564c9f16-7192-25d1-b48c-ece5617eb305"
  to = module.base.module.hci0.azurerm_role_assignment.ServicePrincipalRoleAssign["ACMRM"]
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac142-rg/providers/Microsoft.Authorization/roleAssignments/4f62afda-ee0f-de28-4b90-bd0ef0aa2049"
  to = module.base.module.hci0.module.serverRoleBindings["AzSHOST1"].azurerm_role_assignment.MachineRoleAssign["KVSU"]
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac142-rg/providers/Microsoft.Authorization/roleAssignments/e755d498-20f6-5398-6caa-26e4415e0a7f"
  to = module.base.module.hci0.module.serverRoleBindings["AzSHOST1"].azurerm_role_assignment.MachineRoleAssign["ASHDMR"]
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac142-rg/providers/Microsoft.Authorization/roleAssignments/e4549c10-dbc8-2bd6-0244-89f1458b1c82"
  to = module.base.module.hci0.module.serverRoleBindings["AzSHOST2"].azurerm_role_assignment.MachineRoleAssign["ACMRM"]
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac142-rg/providers/Microsoft.Authorization/roleAssignments/8b33c9c7-0b01-e6d9-d8e3-198b9d4bd0ee"
  to = module.base.module.hci0.module.serverRoleBindings["AzSHOST1"].azurerm_role_assignment.MachineRoleAssign["Reader"]
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac142-rg/providers/Microsoft.Authorization/roleAssignments/dcebea87-547c-ecd3-c243-f11ef3cf127f"
  to = module.base.module.hci0.module.serverRoleBindings["AzSHOST2"].azurerm_role_assignment.MachineRoleAssign["ASHDMR"]
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac142-rg/providers/Microsoft.Authorization/roleAssignments/d7f0637b-9f2b-4156-e377-16a6584e05bf"
  to = module.base.module.hci0.module.serverRoleBindings["AzSHOST2"].azurerm_role_assignment.MachineRoleAssign["Reader"]
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac142-rg/providers/Microsoft.HybridCompute/machines/AzSHOST1/providers/Microsoft.Insights/dataCollectionRuleAssociations/DCRA_66f1d6441562417de4f9e42c3ae50fbb"
  to = module.base.module.hci0-extensions.module.insights[0].azurerm_monitor_data_collection_rule_association.association["AzSHOST1"]
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac142-rg/providers/Microsoft.HybridCompute/machines/AzSHOST2/providers/Microsoft.Insights/dataCollectionRuleAssociations/DCRA_811804f6724875a4fb3a43bde9228c5c"
  to = module.base.module.hci0-extensions.module.insights[0].azurerm_monitor_data_collection_rule_association.association["AzSHOST2"]
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac142-rg/providers/Microsoft.Insights/dataCollectionRules/AzureStackHCI-iac142-dcr"
  to = module.base.module.hci0-extensions.module.insights[0].azurerm_monitor_data_collection_rule.dcr
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac142-rg/providers/Microsoft.Insights/dataCollectionEndpoints/iac142-dce"
  to = module.base.module.hci0-extensions.module.insights[0].azurerm_monitor_data_collection_endpoint.dce
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac142-rg/providers/Microsoft.OperationalInsights/workspaces/iac142-workspace"
  to = module.base.module.hci0-extensions.module.insights[0].azurerm_log_analytics_workspace.workspace
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac142-rg/providers/Microsoft.AzureStackHCI/clusters/iac142-cl/ArcSettings/default/Extensions/AzureMonitorWindowsAgent?api-version=2023-08-01"
  to = module.base.module.hci0-extensions.module.insights[0].azapi_resource.monitor_agent
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac142-rg/providers/Microsoft.AzureStackHCI/clusters/iac142-cl/ArcSettings/default/Extensions/AzureEdgeAlerts?api-version=2023-08-01"
  to = module.base.module.hci0-extensions.azapi_resource.alerts[0]
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac142-rg/providers/Microsoft.Kubernetes/connectedClusters/iac142-aksArc?api-version=2024-01-01"
  to = module.base.module.hci0-aksarc0.azapi_resource.connectedCluster
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac142-rg/providers/Microsoft.Kubernetes/connectedClusters/iac142-aksArc/providers/Microsoft.HybridContainerService/provisionedClusterInstances/default"
  to = module.base.module.hci0-aksarc0.azapi_resource.provisionedClusterInstance
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac142-rg/providers/Microsoft.AzureStackHCI/logicalNetworks/iac142-logicalnetwork?api-version=2023-09-01-preview"
  to = module.base.module.hci0-aksarc0.azapi_resource.logicalNetwork[0]
}
