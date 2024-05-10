resource "azurerm_resource_group" "rg" {
  name     = local.resourceGroupName
  location = var.location
  tags = {
    siteId = "${var.siteId}"
  }
}

module "hci0-provisioners" {
  source                 = "../hci-provisioners"
  depends_on             = [azurerm_resource_group.rg]
  count                  = var.enableProvisioners ? 1 : 0
  resourceGroup          = azurerm_resource_group.rg
  siteId                 = var.siteId
  domainFqdn             = var.domainFqdn
  adouPath               = local.adouPath
  domainServerIP         = var.domainServerIP
  authenticationMethod   = var.authenticationMethod
  servers                = var.servers
  clusterName            = local.clusterName
  subscriptionId         = var.subscriptionId
  localAdminUser         = var.localAdminUser
  localAdminPassword     = var.localAdminPassword
  domainAdminUser        = var.domainAdminUser
  domainAdminPassword    = var.domainAdminPassword
  deploymentUser         = local.deploymentUserName
  deploymentUserPassword = var.deploymentUserPassword
  servicePrincipalId     = var.servicePrincipalId
  servicePrincipalSecret = var.servicePrincipalSecret
  destory_adou           = var.destory_adou
  virtualHostIp          = var.virtualHostIp
  dcPort                 = var.dcPort
  serverPorts            = var.serverPorts
}

module "hci0" {
  source                        = "../hci"
  depends_on                    = [module.hci0-provisioners]
  resourceGroup                 = azurerm_resource_group.rg
  siteId                        = var.siteId
  domainFqdn                    = var.domainFqdn
  startingAddress               = var.startingAddress
  endingAddress                 = var.endingAddress
  defaultGateway                = var.defaultGateway
  dnsServers                    = var.dnsServers
  adouPath                      = local.adouPath
  servers                       = var.servers
  managementAdapters            = var.managementAdapters
  storageNetworks               = var.storageNetworks
  rdmaEnabled                   = var.rdmaEnabled
  storageConnectivitySwitchless = var.storageConnectivitySwitchless
  clusterName                   = local.clusterName
  customLocationName            = local.customLocationName
  witnessStorageAccountName     = local.witnessStorageAccountName
  keyvaultName                  = local.keyvaultName
  randomSuffix                  = local.randomSuffix
  subscriptionId                = var.subscriptionId
  deploymentUser                = local.deploymentUserName
  deploymentUserPassword        = var.deploymentUserPassword
  localAdminUser                = var.localAdminUser
  localAdminPassword            = var.localAdminPassword
  servicePrincipalId            = var.servicePrincipalId
  servicePrincipalSecret        = var.servicePrincipalSecret
  rpServicePrincipalObjectId    = var.rpServicePrincipalObjectId
  isExported                    = var.isExported
}

locals {
  serverNames = [for server in var.servers : server.name]
}

module "hci0-extensions" {
  source                     = "../hci-extensions"
  depends_on                 = [module.hci0]
  resourceGroup              = azurerm_resource_group.rg
  siteId                     = var.siteId
  arcSettingsId              = module.hci0.arcSettings.id
  serverNames                = local.serverNames
  workspaceName              = local.workspaceName
  dataCollectionEndpointName = local.dataCollectionEndpointName
  dataCollectionRuleName     = local.dataCollectionRuleName
  enableInsights             = var.enableInsights
  enableAlerts               = var.enableAlerts
}

module "hci0-aksarc0" {
  source                  = "../aks-arc"
  depends_on              = [module.hci0]
  resourceGroup           = azurerm_resource_group.rg
  customLocationId        = module.hci0.customlocation.id
  arbId                   = module.hci0.arcbridge.id
  sshKeyVaultId           = module.hci0.keyvault.id
  dnsServers              = var.dnsServers
  defaultGateway          = var.defaultGateway
  agentPoolProfiles       = var.aksArc0-agentPoolProfiles
  startingAddress         = var.aksArc0-startingAddress
  endingAddress           = var.aksArc0-endingAddress
  addressPrefix           = var.aksArc0-addressPrefix
  vlanId                  = var.aksArc0-vlanId
  controlPlaneIp          = var.aksArc0-controlPlaneIp
  logicalNetworkName      = local.aksArc0-logicalNetworkName
  aksArcName              = local.aksArc0Name
  kubernetesVersion       = var.aksArc0-kubernetesVersion
  controlPlaneCount       = var.aksArc0-controlPlaneCount
  controlPlaneVmSize      = var.aksArc0-controlPlaneVmSize
  enableAzureRBAC         = var.aksArc0-enableAzureRBAC
  rbacAdminGroupObjectIds = var.aksArc0-rbacAdminGroupObjectIds
  sshPublicKey            = var.aksArc0-sshPublicKey
  isExported              = var.isExported
}

