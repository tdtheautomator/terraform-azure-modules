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