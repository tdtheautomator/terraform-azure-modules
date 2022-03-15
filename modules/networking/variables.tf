variable "location" {
  type = string
}
variable "department" {
  type    = string
}
variable "environment" {
  type    = string
}

variable "rg_name" {
  type    = string
}

variable "vnet_address_space" {
  type    = list(string)
}

variable "vnet_subnets" {
  type = map(any)
}