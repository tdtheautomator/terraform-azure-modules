
locals {
  policy_files = fileset("${path.module}/policies","*.json")
}

data "azurerm_subscription" "current" {}
data "template_file" "policy"{
    for_each = toset([for p in local.policy_files : split(".",p)[0]])
    template = file(format("%s/policies/%s.json",path.module,each.key))
}

resource "azurerm_policy_definition" "policy" {
    for_each = toset([for p in local.policy_files : split(".",p)[0]])
    display_name = jsondecode(data.template_file.policy[each.key].rendered)["properties"]["displayName"]
    description = jsondecode(data.template_file.policy[each.key].rendered)["properties"]["description"]
    mode = lookup(jsondecode(data.template_file.policy[each.key].rendered)["properties"],"mode","All")
    name = each.key
    policy_type = "Custom"
    policy_rule = jsonencode(jsondecode(data.template_file.policy[each.key].rendered)["properties"]["policyRule"])
    parameters = contains(
        keys(jsondecode(data.template_file.policy[each.key].rendered)["properties"]),"parameters"
        ) ? jsonencode(jsondecode(data.template_file.policy[each.key].rendered)["properties"]["parameters"]) : null
}

resource "azurerm_subscription_policy_assignment" "assignpolicy" {
  for_each = toset([for p in keys(var.policy_params) : p])
  name = each.key
  display_name = each.key
  policy_definition_id = azurerm_policy_definition.policy[each.key].id
  subscription_id = data.azurerm_subscription.current.id
  parameters = jsonencode(var.policy_params[each.key])
}