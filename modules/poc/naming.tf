locals {
  resourceGroupName          = "${var.siteId}-rg"
  clusterName                = "${var.siteId}-cl"
  deploymentUserName         = "${var.siteId}deployment"
  customLocationName         = "${var.siteId}-customlocation"
  keyvaultName               = "${var.siteId}-kv"
  witnessStorageAccountName  = "${var.siteId}wit"
  randomSuffix               = true
  adouPath                   = "OU=${var.siteId}${var.adouSuffix}"
  workspaceName              = ""
  dataCollectionEndpointName = ""
  dataCollectionRuleName     = ""
  aksArc0Name                = "${var.siteId}-aksArc"
  aksArc0-logicalNetworkName = "${var.siteId}-logicalnetwork"
}
