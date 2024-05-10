
import {
  id = "/subscriptions/586c20df-c465-4f10-8673-65aa4859e7ca/resourceGroups/contoso-rg"
  to = module.base.azurerm_resource_group.rg
}

import {
  id = "/subscriptions/586c20df-c465-4f10-8673-65aa4859e7ca/resourceGroups/contoso-rg/providers/Microsoft.AzureStackHCI/clusters/contoso-cl?api-version=2023-08-01-preview"
  to = module.base.module.hci0.azapi_resource.cluster
}

import {
  id = "/subscriptions/586c20df-c465-4f10-8673-65aa4859e7ca/resourceGroups/contoso-rg/providers/Microsoft.AzureStackHCI/clusters/contoso-cl/deploymentSettings/default?api-version=2023-08-01-preview"
  to = module.base.module.hci0.azapi_resource.validatedeploymentsetting_seperate[0]
}

import {
  id = "/subscriptions/586c20df-c465-4f10-8673-65aa4859e7ca/resourceGroups/contoso-rg/providers/Microsoft.Storage/storageAccounts/contosowit28"
  to = module.base.module.hci0.azurerm_storage_account.witness
}

import {
  id = "/subscriptions/586c20df-c465-4f10-8673-65aa4859e7ca/resourceGroups/contoso-rg/providers/Microsoft.KeyVault/vaults/contoso-kv-28"
  to = module.base.module.hci0.azurerm_key_vault.DeploymentKeyVault
}

import {
  id = "28,10,99"
  to = module.base.module.hci0.random_integer.random_suffix
}

import {
  id = "https://contoso-kv-28.vault.azure.net/secrets/AzureStackLCMUserCredential/021dd13e15c0433f89c604ec06e5a523"
  to = module.base.module.hci0.azurerm_key_vault_secret.AzureStackLCMUserCredential
}

import {
  id = "https://contoso-kv-28.vault.azure.net/secrets/LocalAdminCredential/027d0ae95dfb4ece8e395f2692a7599b"
  to = module.base.module.hci0.azurerm_key_vault_secret.LocalAdminCredential
}

import {
  id = "https://contoso-kv-28.vault.azure.net/secrets/DefaultARBApplication/ca04339eb187441c8e9076d8780e125a"
  to = module.base.module.hci0.azurerm_key_vault_secret.DefaultARBApplication
}

import {
  id = "https://contoso-kv-28.vault.azure.net/secrets/WitnessStorageKey/84250d21504d41e988c7c81aa4395e17"
  to = module.base.module.hci0.azurerm_key_vault_secret.WitnessStorageKey
}

import {
  id = "/subscriptions/586c20df-c465-4f10-8673-65aa4859e7ca/resourceGroups/contoso-rg/providers/Microsoft.Authorization/roleAssignments/ee0f04b3-d462-c919-63ce-d1f1e045ee6d"
  to = module.base.module.hci0.azurerm_role_assignment.ServicePrincipalRoleAssign["ACMRM"]
}

import {
  id = "/subscriptions/586c20df-c465-4f10-8673-65aa4859e7ca/resourceGroups/contoso-rg/providers/Microsoft.Authorization/roleAssignments/b7817cbc-98a5-4712-25a5-47cdeb870896"
  to = module.base.module.hci0.module.serverRoleBindings["AzSHOST1"].azurerm_role_assignment.MachineRoleAssign["ASHDMR"]
}

import {
  id = "/subscriptions/586c20df-c465-4f10-8673-65aa4859e7ca/resourceGroups/contoso-rg/providers/Microsoft.Authorization/roleAssignments/d77afb2d-52fc-fd50-8c1f-0d926e9eeb52"
  to = module.base.module.hci0.module.serverRoleBindings["AzSHOST2"].azurerm_role_assignment.MachineRoleAssign["KVSU"]
}

import {
  id = "/subscriptions/586c20df-c465-4f10-8673-65aa4859e7ca/resourceGroups/contoso-rg/providers/Microsoft.Authorization/roleAssignments/101205ab-acca-0653-3e69-6b5acc73b94d"
  to = module.base.module.hci0.module.serverRoleBindings["AzSHOST2"].azurerm_role_assignment.MachineRoleAssign["ACMRM"]
}

import {
  id = "/subscriptions/586c20df-c465-4f10-8673-65aa4859e7ca/resourceGroups/contoso-rg/providers/Microsoft.Authorization/roleAssignments/186d0e4c-5a35-fb24-55f1-aa281d6b9528"
  to = module.base.module.hci0.module.serverRoleBindings["AzSHOST1"].azurerm_role_assignment.MachineRoleAssign["ACMRM"]
}

import {
  id = "/subscriptions/586c20df-c465-4f10-8673-65aa4859e7ca/resourceGroups/contoso-rg/providers/Microsoft.Authorization/roleAssignments/29f1c736-9aa5-c13c-2b88-4fc09c967c3f"
  to = module.base.module.hci0.module.serverRoleBindings["AzSHOST2"].azurerm_role_assignment.MachineRoleAssign["Reader"]
}

import {
  id = "/subscriptions/586c20df-c465-4f10-8673-65aa4859e7ca/resourceGroups/contoso-rg/providers/Microsoft.Authorization/roleAssignments/0da6323a-f711-5a51-3007-032058e0c834"
  to = module.base.module.hci0.module.serverRoleBindings["AzSHOST1"].azurerm_role_assignment.MachineRoleAssign["Reader"]
}

import {
  id = "/subscriptions/586c20df-c465-4f10-8673-65aa4859e7ca/resourceGroups/contoso-rg/providers/Microsoft.Authorization/roleAssignments/15609b1b-5eeb-1935-1b3b-7dffe75da420"
  to = module.base.module.hci0.module.serverRoleBindings["AzSHOST2"].azurerm_role_assignment.MachineRoleAssign["ASHDMR"]
}

import {
  id = "/subscriptions/586c20df-c465-4f10-8673-65aa4859e7ca/resourceGroups/contoso-rg/providers/Microsoft.Authorization/roleAssignments/b7c3d8f1-85e9-6da8-c926-9378ac5cf4fa"
  to = module.base.module.hci0.module.serverRoleBindings["AzSHOST1"].azurerm_role_assignment.MachineRoleAssign["KVSU"]
}

import {
  id = "/subscriptions/586c20df-c465-4f10-8673-65aa4859e7ca/resourceGroups/contoso-rg/providers/Microsoft.Kubernetes/connectedClusters/contoso-aksArc?api-version=2024-01-01"
  to = module.base.module.hci0-aksarc0.azapi_resource.connectedCluster
}

import {
  id = "/subscriptions/586c20df-c465-4f10-8673-65aa4859e7ca/resourceGroups/contoso-rg/providers/Microsoft.Kubernetes/connectedClusters/contoso-aksArc/providers/Microsoft.HybridContainerService/provisionedClusterInstances/default"
  to = module.base.module.hci0-aksarc0.azapi_resource.provisionedClusterInstance
}

import {
  id = "/subscriptions/586c20df-c465-4f10-8673-65aa4859e7ca/resourceGroups/contoso-rg/providers/Microsoft.AzureStackHCI/logicalNetworks/contoso-logicalnetwork?api-version=2023-09-01-preview"
  to = module.base.module.hci0-aksarc0.azapi_resource.logicalNetwork[0]
}
