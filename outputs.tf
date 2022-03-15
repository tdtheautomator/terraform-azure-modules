output "resource-group-id" {
  value = module.resourcegroup.resource-group-id
}
output "resource-group-name" {
  value = module.resourcegroup.resource-group-name
}
output "resource-group-location" {
  value = module.resourcegroup.resource-group-location
}
output "vnet-name" {
  value = module.networking.vnet-name
}
output "subnets" {
  value = module.networking.subnets
}

output "NSGs" {
  value = module.networking.network-security-groups
}
