
variable "rg_names"{
    type = list(string)
}
resource "azurerm_resource_group" "rgs" {
  count    = length(var.rg_names)
  name     = var.rg_names[count.index]
  location = "west us"
}