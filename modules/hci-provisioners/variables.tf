variable "resourceGroup" {
  description = "The resource group where the resources will be deployed."
}


variable "siteId" {
  type        = string
  description = "A unique identifier for the site."
}

variable "clusterName" {
  type = string
  description = "The name of the HCI cluster. Must be the same as the name when creating HCI cluster on Azure."
}

variable "servers" {
  description = "A list of servers with their names and IPv4 addresses."
  type = list(object({
    name        = string
    ipv4Address = string
  }))
}

variable "domainServerIP" {
  description = "The ip of the domain server."
  type        = string
}

variable "destory_adou" {
  description = "whether destroy previous adou"
  default     = false
  type        = bool
}

variable "domainAdminUser" {
  type        = string
  description = "The username for the domain administrator account."
}

variable "domainAdminPassword" {
  sensitive   = true
  type        = string
  description = "The password for the domain administrator account."
}

variable "localAdminUser" {
  type        = string
  description = "The username for the local administrator account."
}

variable "localAdminPassword" {
  sensitive   = true
  type        = string
  description = "The password for the local administrator account."
}

variable "deploymentUser" {
  type        = string
  description = "The username for deployment user."
  validation {
    condition = length(var.deploymentUser) < 65 && length(var.deploymentUser) > 0 && can(regex("^[a-zA-Z_][a-zA-Z0-9_-]*$", var.deploymentUser))
    error_message = "Username must be between 1 to 64 characters and only contain letters, numbers, hyphens, and underscores and may not start with a hyphen or number."
  }
}

variable "deploymentUserPassword" {
  sensitive   = true
  type        = string
  description = "The password for deployment user."
  validation {
    condition = length(var.password) >= 12 && can(regex("[a-z]", var.password)) && can(regex("[A-Z]", var.password)) && can(regex("[0-9]", var.password)) && can(regex("[!@#$%^&*(),.?\":{}|<>]", var.password))
    error_message = "Use a password that is at least 12 characters long and contains: a lowercase character, an uppercase character, a numeral, and a special character."
  }
}

variable "authenticationMethod" {
  type        = string
  description = "The authentication method for Enter-PSSession."
  validation {
    condition = can(regex("^(Default|Basic|Negotiate|NegotiateWithImplicitCredential|Credssp|Digest|Kerberos)$", var.authenticationMethod))
    error_message = "Value of authenticationMethod should be {Default | Basic | Negotiate | NegotiateWithImplicitCredential | Credssp | Digest | Kerberos}"
  }
  default = "Default"
}

variable "domainFqdn" {
  description = "The domain FQDN."
  type        = string
}

variable "adouPath" {
  type        = string
  description = "The Active Directory OU path."
}

variable "subscriptionId" {
  type        = string
  description = "The subscription ID for the Azure account."
}

variable "tenant" {
  type        = string
  description = "The tenant ID for the Azure account."
}

variable "servicePrincipalId" {
  type        = string
  sensitive   = true
  description = "The service principal ID for the Azure account."
}

variable "servicePrincipalSecret" {
  type        = string
  sensitive   = true
  description = "The service principal secret for the Azure account."
}

# Virtual host related variables
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
