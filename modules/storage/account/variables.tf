#--------------Common Variables--------------------------------
variable "location" {
  type = string
}

variable "rg_name" {
  type    = string
  default = null
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

#-----------------------------------------------------------

variable "account_kind" {
  type = string
  default = "StorageV2"
}

variable "account_tier" {
  type = string
  default = "Standard"
}

variable "replication_type" {
  type = string
  default = "GRS"
}


variable "access_tier" {
  type = string
  default = "Hot"
}

#-----------------------------------------------------------