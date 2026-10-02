## hardcoded

resource "azurerm_resource_group" "rg-hard" {
  name     = "dev-hard"
  location = "westus"
}

### rg with variable
variable "rg-var" { default = "dev-var" }

resource "azurerm_resource_group" "dev-rg-var" {
  name     = var.rg-var
  location = "westus"
}

## variable with vars
variable "rg-var-vars" {}
variable "location-var" {}

resource "azurerm_resource_group" "dev-rg-var-vars" {
  name     = var.rg-var-vars
  location = var.location-var
}

## rg with for_each+list
resource "azurerm_resource_group" "rg-each-list" {
  for_each = toset(["rg-kiwi1", "rg-kiwi2"])
  name     = each.key
  location = "westus"
}

## rg wit for_each+var+list

resource "azurerm_resource_group" "rg-each-var-list" {
  for_each = toset(var.rg-list)
  name     = each.key
  location = "westus"
}

## rg with for_each+var+map
resource "azurerm_resource_group" "rg-each-var-map" {
  for_each = var.rg-map
  name     = each.key
  location = each.value
}

## rg with for_each+map
resource "azurerm_resource_group" "rg-each-map" {
  for_each = {
    "rg-map1" = "westus"
  }
  name     = each.key
  location = each.value
}
## rg with for_each+var+nested_map+vars

resource "azurerm_resource_group" "rg-each-var-nested-map" {
  for_each   = var.rg-nested-map
  name       = each.value.name
  location   = each.value.location
  managed_by = each.value.managed_by
}