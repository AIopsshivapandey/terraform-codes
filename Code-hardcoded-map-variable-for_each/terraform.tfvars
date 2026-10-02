rg-var-vars  = "dev-var-vars"
location-var = "westus"


rg-list = ["dev3434", "dev5656"]
rg-map = {
  "dev-map1" = "westus"
}

rg-nested-map = {
  "dev-nested-map1" = {
    name       = "dev-nested-map1"
    location   = "westus"
    managed_by = "terraform"
  }
}