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

variable "deploymenttype" {
  type = string
  default = "terraform"
}