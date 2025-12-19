module "rgs" {
  source = "../../module/resource_group"
  rgs    = var.rgs

}
module "stgs" {
  depends_on = [module.rgs]
  source     = "../../module/storage_account"
  stgs       = var.stgs

}
# module "acrs" {
#   source = "../../module/azurerm_container_registry"
#   acrs   = var.acrs

# }
# module "vnet" {
#   source = "../../module/virtual_network"
#   vnets  = var.vnets

# }
# module "subnets" {
#   source  = "../../module/subnet"
#   subnets = var.subnets

# }
# module "nic" {
#   source = "../../module/azurerm_nic"
#   nic    = var.nic

# }
# module "pip" {
#   source = "../../module/azurerm_pip"
#   pip    = var.pip

# }
# module "key_vault" {
#   source    = "../../module/azurerm_keyvalult"
#   key_vault = var.key_vault
# }

# module "sql_server" {
#   source     = "../../module/sql_server"
#   sql_server = var.sql_server

# }
# module "sql_database" {
#   source       = "../../module/sql_database"
#   sql_database = var.sql_database
# }
# module "azurerm_compute" {
#   source = "../../module/azurerm_compute"
#   vms    = var.azurerm_compute
# }