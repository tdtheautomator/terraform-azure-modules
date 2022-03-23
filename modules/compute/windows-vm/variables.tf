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

variable "win_subnet_id" {
  type = string
}

variable "win_vm_size" {
  type    = string
  default = "Standard_B2s"
}

variable "win_vm_admin_name" {
  type    = string
  default = "winadmin"
}

variable "win_vm_admin_pass" {
  type    = string
}

variable "win_vm_disk_type" {
  type    = string
  default = "StandardSSD_LRS"
}

variable "win_stor_acc_type" {
  type    = string
  default = "StandardSSD_LRS"
}

variable "win_add_disks" {
  type = list(number)
}

variable "win_vm_sku" {
  type    = string
  default = "2019-Datacenter"
}

variable "win_vm_count" {
  type    = number
  default = 1
}
