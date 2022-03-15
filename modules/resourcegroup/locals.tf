locals {
  default_tags = {
    department  = lower(var.department)
    environment = lower(var.environment)
    appname  = lower(var.appname)
    deployment-type = lower(var.deployment-type)
  }
  prefix    = lower("${var.department}-${var.environment}-${var.appname}")
  rg_name   = "${local.prefix}-rg"
}