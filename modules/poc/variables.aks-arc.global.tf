
variable "aksArc0-kubernetesVersion" {
  type        = string
  description = "The version of Kubernetes to use for the provisioned cluster."
  default     = "1.25.11"
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
  default     = true
}

variable "aksArc0-rbacAdminGroupObjectIds" {
  type        = list(string)
  description = "The object id of the Azure AD group that will be assigned the 'cluster-admin' role in the Kubernetes cluster."
  default     = ["1b81c027-029d-434d-9642-376e392bfe65"]
}

variable "aksArc0-sshPublicKey" {
  type        = string
  description = "The SSH public key that will be used to access the kubernetes cluster nodes. If not specified, a new SSH key pair will be generated."
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDMPRywIvmM+MXzoWYkLq9XJlQpOQTQmIsyvP24OxWR7F6BtSV/a4KjDnQQlJezy2ACANFSuYUL8ym69/JIknvQpF0MUc13jN8EftOQ0znxSSGUDTJxOxzBTVRMbxR6Lb+lETA1l0UZ1/n180gYv2lVrzAqgbbXW88tlkq9f93Uz7u0brHOhsfqrRDxqOIZ3FZSjG+CNFJFq8u8e8/FXPHOhkrD7ECbAz5I6fe5jchOKRG0Cv50WeTvrZMv3rmdCYgNbZB0OSqgsyusc8I3lhtxShxBfBJ3jjsx34Gpu2jvfn5VfTkPdzTkLGoezCtp1o5T/QemHLqST3DizhRIFYuowson4p16s+yNYx54q0VgjSCMRc+UqiSlocDzaipWIzyfmY/KY1bb+eh9ig6Bslw0+m+j0XlVv27a2Tdac4F8k8to03FYYNAV1kKr4VqKYHOil2O1dlfobmKfK9POznzhhCvpX/dNuOcImd0iEOCwZIkreMI2KNG3M30lJkGYobgR6BoT4Vq+fvqLaVDF1pRHkTcJcWUoOd1wAnAzNNt58bKZUs+FVY0V4u6qcJVUkOQ5vAMyIbixLuGRPsKp0WZ5si/DJ4/NB6Ya9yxAwKSA7LHrmhJV2toR85BtxurMV92syK5nN7ickC2tebusJdFoBu9SMmbCsLaOEqwp6A1KdQ==\n"
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
