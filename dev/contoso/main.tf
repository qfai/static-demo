module "base" {
  source             = "../../modules/poc"
  siteId             = basename(abspath(path.module))
  location           = "eastus"
  enableProvisioners = false
  defaultGateway     = "192.168.1.1"
  subnetMask         = "255.255.255.0"
  startingAddress    = "192.168.1.55"
  endingAddress      = "192.168.1.65"
  servers = [
    {
      name        = "AzSHOST1"
      ipv4Address = "192.168.1.12"
    },
    {
      name        = "AzSHOST2"
      ipv4Address = "192.168.1.13"
    },
  ]
  domainServerIP             = "unknown"
  subscriptionId             = var.subscriptionId
  domainAdminUser            = var.domainAdminUser
  domainAdminPassword        = var.domainAdminPassword
  localAdminUser             = var.localAdminUser
  localAdminPassword         = var.localAdminPassword
  deploymentUserPassword     = var.deploymentUserPassword
  servicePrincipalId         = var.servicePrincipalId
  servicePrincipalSecret     = var.servicePrincipalSecret
  rpServicePrincipalObjectId = var.rpServicePrincipalObjectId
  isExported                 = true
  aksArc0-controlPlaneIp     = "192.168.1.190"
  aksArc0-startingAddress    = "192.168.1.171"
  aksArc0-endingAddress      = "192.168.1.190"
  aksArc0-addressPrefix      = "192.168.1.0/24"
}
