
variable "subscriptionId" {
  type        = string
  description = "The subscription ID."
}

variable "localAdminUser" {
  type        = string
  description = "The username of the local administrator account."
  sensitive   = true
}

variable "localAdminPassword" {
  type        = string
  description = "The password of the local administrator account."
  sensitive   = true
}

variable "domainAdminUser" {
  type        = string
  description = "The username of the domain account."
  sensitive   = true
}

variable "domainAdminPassword" {
  type        = string
  description = "The password of the domain account."
  sensitive   = true
}

variable "deploymentUserPassword" {
  type        = string
  description = "The password for deployment user."
  sensitive   = true
}

variable "servicePrincipalId" {
  type        = string
  description = "The id of service principal to create hci cluster."
  sensitive   = true
}

variable "servicePrincipalSecret" {
  type        = string
  description = "The secret of service principal to create hci cluster."
  sensitive   = true
}

variable "rpServicePrincipalObjectId" {
  type        = string
  description = "The service principal id of HCI RP."
}
