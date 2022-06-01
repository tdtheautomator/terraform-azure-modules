locals {
prefix    = lower(join("-",["${var.environment}","${var.department}","${var.appname}"]))
  vnet_name = "${local.prefix}-vnet"
  netwatch_name = "${local.prefix}-nw"
  rg_name = var.rg_name != null ? var.rg_name : "${local.prefix}-rg"
    default_tags = {
    department  = lower(var.department)
    environment = lower(var.environment)
    appname  = lower(var.appname)
    deployment-type = lower(var.deployment-type)
  }
}