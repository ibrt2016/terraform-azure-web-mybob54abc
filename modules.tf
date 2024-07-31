data "http" "my_ip" {
  url = "http://ip4.clara.net/?raw"
}

module "azure_region" {
  source  = "claranet/regions/azurerm"
  version = "7.1.1"

  azure_region = var.azure_region
}

module "rg" {
  source  = "claranet/rg/azurerm"
  version = "6.1.1"

  client_name = var.client_name
  environment = var.environment
  location    = module.azure_region.location
  stack       = var.stack
}