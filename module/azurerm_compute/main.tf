# resource "azurerm_linux_virtual_machine" "azurerm_compute" {
#   for_each                        = var.vms
#   name                            = each.value.vm_name
#   resource_group_name             = each.value.rg_name
#   location                        = each.value.location
#   size                            = each.value.size
#   admin_username                  = data.azurerm_key_vault_secret[each.key].vm_username
#   admin_password                  = data.azurerm_key_vault_secret[each.key].vm_password
#   disable_password_authentication = false
#   network_interface_ids = [
#     azurerm_network_interface.nic[each.key].id
#   ]

#   os_disk {
#     caching              = "ReadWrite"
#     storage_account_type = "Standard_LRS"
#   }

#   source_image_reference {
#     publisher = each.value.source_image_reference.publisher
#     offer     = each.value.source_image_reference.offer
#     sku       = each.value.source_image_reference.sku
#     version   = each.value.source_image_reference.version
#   }
# }