locals {
  default_tags = {
    department  = lower(var.department)
    environment = lower(var.environment)
    appname  = lower(var.appname)
    deploymenttype = lower(var.deploymenttype)
  }
  prefix    = lower("${var.department}-${var.environment}-${var.appname}")
  rg_name   = "${local.prefix}-rg"
}