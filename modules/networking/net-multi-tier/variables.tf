variable "location" {
  type = string
}
variable "department" {
  type    = string
}
variable "environment" {
  type    = string
}

variable "appname" {
  type = string
}

variable "deployment-type" {
  type = string
  default = "terraform"
}
variable "rg_name" {
  type    = string
  default = null
}

variable "vnet_address_space" {
  type    = list(string)
}

variable "vnet_subnets" {
  type = map(any)
}

