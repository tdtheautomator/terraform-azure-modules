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

variable "lin_subnet_id" {
  type = string
}

variable "lin_vm_size" {
  type    = string
  default = "Standard_B2s"
}

variable "lin_vm_admin_name" {
  type    = string
  default = "linadmin"
}

variable "lin_vm_admin_pass" {
  type    = string
}

variable "lin_vm_disk_type" {
  type    = string
  default = "StandardSSD_LRS"
}

variable "lin_stor_acc_type" {
  type    = string
  default = "StandardSSD_LRS"
}

variable "lin_add_disks" {
  type = list(number)
}

variable "lin_vm_sku" {
  type    = string
  default = "18.04-LTS"
}

variable "lin_vm_count" {
  type    = number
  default = 1
}
