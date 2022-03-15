locals {
  prefix    = lower("${var.department}-${var.environment}-${var.appname}")
  vnet_name = "${local.prefix}-vnet"
  default_tags = {
    department  = lower(var.department)
    environment = lower(var.environment)
    appname  = lower(var.appname)
    deployment-type = lower(var.deployment-type)
  }
}