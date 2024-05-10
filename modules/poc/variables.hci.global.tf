
variable "enableProvisioners" {
  type        = bool
  description = "Whether to enable provisioners."
  default     = true
}

variable "domainServerIP" {
  type        = string
  description = "The ip of the domain server."
}

variable "authenticationMethod" {
  type        = string
  description = "The authentication method for Enter-PSSession."
  default     = "Default"
}

variable "destory_adou" {
  type        = bool
  description = "Whether destroy previous adou."
  default     = false
}

variable "domainFqdn" {
  type        = string
  description = "The domain FQDN."
  default     = "jumpstart.local"
}

variable "subnetMask" {
  type        = string
  description = "The subnet mask for the network."
  default     = "255.255.255.0"
}

variable "defaultGateway" {
  type        = string
  description = "The default gateway for the network."
  default     = "192.168.1.1"
}

variable "dnsServers" {
  type        = list(string)
  description = "A list of DNS server IP addresses."
  default     = ["192.168.1.254"]
}

variable "adouSuffix" {
  type        = string
  description = "The suffix of Active Directory OU path."
  default     = ",DC=jumpstart,DC=local"
}

variable "managementAdapters" {
  type    = list(string)
  default = ["FABRIC", "FABRIC2"]
}

variable "storageNetworks" {
  type = list(object({ name = string, networkAdapterName = string, vlanId = string }))
  default = [
    {
      name               = "Storage1Network"
      networkAdapterName = "StorageA"
      vlanId             = "711"
    },
    {
      name               = "Storage2Network"
      networkAdapterName = "StorageB"
      vlanId             = "712"
    },
  ]
}

variable "rdmaEnabled" {
  type    = bool
  default = false
}

variable "storageConnectivitySwitchless" {
  type    = bool
  default = false
}

variable "isExported" {
  type        = bool
  description = "Whether the HCI cluster is exported."
  default     = false
}
