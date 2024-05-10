
variable "aksArc0-kubernetesVersion" {
  type        = string
  description = "The version of Kubernetes to use for the provisioned cluster."
  default     = "1.27.3"
}

variable "aksArc0-controlPlaneCount" {
  type        = number
  description = "The number of control plane nodes for the Kubernetes cluster."
  default     = 1
}

variable "aksArc0-controlPlaneVmSize" {
  type        = string
  description = "The size of the Virtual Machines to use for the control plane nodes."
  default     = "Standard_A4_v2"
}

variable "aksArc0-agentPoolProfiles" {
  type = list(object({
    count             = number
    enableAutoScaling = optional(bool)
    nodeTaints        = optional(list(string))
    nodeLabels        = optional(map(string))
    maxPods           = optional(number)
    name              = optional(string)
    osSKU             = optional(string, "CBLMariner")
    osType            = optional(string, "Linux")
    vmSize            = optional(string, "Standard_A4_v2")
  }))
  description = "The agent pool profiles for the Kubernetes cluster."
  default = [{
    count  = 1
    name   = "nodepool1"
    osSKU  = "CBLMariner"
    osType = "Linux"
    vmSize = "Standard_A4_v2"
  }]
}

variable "aksArc0-enableAzureRBAC" {
  type        = bool
  description = "Whether to enable Azure RBAC for the Kubernetes cluster."
  default     = false
}

variable "aksArc0-rbacAdminGroupObjectIds" {
  type        = list(string)
  description = "The object id of the Azure AD group that will be assigned the 'cluster-admin' role in the Kubernetes cluster."
  default     = []
}

variable "aksArc0-sshPublicKey" {
  type        = string
  description = "The SSH public key that will be used to access the kubernetes cluster nodes. If not specified, a new SSH key pair will be generated."
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDTaBXSWWf1myXRduMZ1Yc7ioehjNSIkPzjW1OwmFAyJQH0eB9sKy/DL7BUbuF/lESGI940asQXgD/2/oPZVeawgO3CuCq1H9yn22zU2ETPUMmEu5uHqmClbcKuOZ8pNDDFq4m4kPoXsGxT2UVxJ2lOR6NfKXdFZ1AYt7pQPvaeXSF6CODVpETwhUhFVnpLoNmvSWROU63wGaL7S5Pwqeo+qBg+LiWocba4bIYd9jbCVeG7IKimgDlN73LebwOlq5sY0CwUAZgte6aCd9WMZR/4NwlpvHOABvzOIpu6PgqkLEGtXBxSXvoB2eY+j1h+HGulfsvRhkmQKOftWp0Y8/gcJ49CSFVHgOh6iiAlePiI3SbhCOiAmaTSxBbLgUtZwBC1mYzoNdOaOavLue5jNgOdZ4F0g4dja3Ffenysz+5uwgB69xX5/uHgWOfUFJ33GSwxzkVgP65yit5zDoJwqbAasuFyxac+mQtE5izBbcp6Oy2KOW466fdsnxGv7EKYwtsyksub8MQIG4MhXF14Zl+RDy1lK99GT8uIPVGc2vrIq8KX8ZwfNAvOEp5RmpEfpGy1exKhvqJFEdkPb7V1G90ZzRSlo97xfVgJTF0MXwBNYv1OryE/gs0hzENo3ewqWei/LtQwy4I6EBbkBRfn8l747jWlJt8T/9rtli/q+nPkUw=="
}

variable "aksArc0-dnsServers" {
  type        = list(string)
  description = "A list of DNS server IP addresses."
  default     = []
}

variable "aksArc0-defaultGateway" {
  type        = string
  description = "The default gateway for the network."
  default     = ""
}
