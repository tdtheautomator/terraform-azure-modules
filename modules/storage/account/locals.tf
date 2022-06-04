#----------------------Randoms-----------------------------------
resource "random_string" "randomstr" {
  length  = 8
  number  = false
  upper   = false
  special = false
}
resource "random_uuid" "randomuuid" {
}
resource "random_integer" "randomint" {
  min = 10000
  max = 20000
}
locals {
    default_tags = {
    department  = lower(var.department)
    environment = lower(var.environment)
    appname  = lower(var.appname)
    deployment-type = lower(var.deployment-type)
  }
  prefix    = lower(join("-",["${var.environment}","${var.department}","${var.appname}"]))
  rg_name = var.rg_name != null ? var.rg_name : "${local.prefix}-rg"
  storage_acc_prefix = join("", [random_string.randomstr.result, random_integer.randomint.result])
}  
