
variable "domainAdminUser" {
  type        = string
  description = "The username for the domain administrator account."
  sensitive   = true
}

variable "domainAdminPassword" {
  type        = string
  description = "The password for the domain administrator account."
  sensitive   = true
}

variable "localAdminUser" {
  type        = string
  description = "The username for the local administrator account."
  sensitive   = true
}

variable "localAdminPassword" {
  type        = string
  description = "The password for the local administrator account."
  sensitive   = true
}

variable "deploymentUserPassword" {
  type        = string
  description = "The password for deployment user."
  sensitive   = true
}

variable "subscriptionId" {
  type        = string
  description = "The subscription ID for the Azure account."
}

variable "servicePrincipalId" {
  type        = string
  description = "The service principal ID for HCI provisioning."
  sensitive   = true
}

variable "servicePrincipalSecret" {
  type        = string
  description = "The service principal secret for HCI provisioning."
  sensitive   = true
}

variable "rpServicePrincipalObjectId" {
  type        = string
  description = "The service principal id of HCI RP."
}

variable "virtualHostIp" {
  type        = string
  description = "The virtual host IP address."
  default     = ""
}

variable "dcPort" {
  type        = number
  description = "Domain controller winrm port in virtual host"
  default     = 5985
}

variable "serverPorts" {
  type        = map(number)
  description = "Server winrm ports in virtual host"
  default     = {}
}
