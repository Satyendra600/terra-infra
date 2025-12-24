# data "azurerm_subnet" "subnet" {
#   for_each             = var.vms
#   name                 = each.value.subnet_name
#   virtual_network_name = each.value.vnet_name
#   resource_group_name  = each.value.rg_name
# }

# data "azurerm_network_interface" "nic" {
#   for_each            = var.vms
#   name                = each.value.nic_name
#   resource_group_name = each.value.rg_name
# }

# data "azurerm_public_ip" "pip" {
#   for_each            = var.vms
#   name                = each.value.pip_name
#   resource_group_name = each.value.rg_name

# }

# data "azurerm_key_vault_secret" "vm_username" {
#   for_each     = var.vms
#   name         = each.value.username_secret_name
#   key_vault_id = each.value.key_vault_id
# }

# data "azurerm_key_vault_secret" "vm_password" {
#   for_each     = var.vms
#   name         = each.value.password_secret_name
#   key_vault_id = each.value.key_vault_id
# }

data "azurerm_subnet" "subnetdata" {
  for_each             = var.vms
  name                 = each.value.subnet_name
  resource_group_name  = each.value.resource_group_name
  virtual_network_name = each.value.virtual_network_name
}

data "azurerm_network_interface" "nicdata" {
  for_each            = var.vms
  name                = each.value.nic_name
  resource_group_name = each.value.resource_group_name
}
