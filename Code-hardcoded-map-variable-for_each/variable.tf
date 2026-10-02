variable "rg-list" {}
variable "rg-map" {}
variable "rg-nested-map" {
  type = map(object({
    location   = string
    name       = string
    managed_by = string
  }))
}