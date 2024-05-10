
variable "servers" {
  type        = list(object({ name = string, ipv4Address = string }))
  description = "A list of servers with their names and IPv4 addresses."
}

variable "startingAddress" {
  type        = string
  description = "The starting IP address of the IP pool."
}

variable "endingAddress" {
  type        = string
  description = "The ending IP address of the IP pool."
}
