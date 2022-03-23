variable "location" {
  type = string
}
variable "department" {
  type = string
}
variable "environment" {
  type = string
}

variable "appname" {
  type = string
}

variable "deployment-type" {
  type    = string
  default = "terraform"
}
variable "rg_name" {
  type    = string
  default = null
}

variable "vnet_name" {
  type = string
}

variable "bastion_cidr" {
  type = list(string)
}
