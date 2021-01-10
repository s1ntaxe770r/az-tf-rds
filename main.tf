provider "azurerm" {
  features{}
} 

resource "azurerm_resource_group" "rg" {
  name = "cache-resource-group"
  location = "East US"

}

resource "azurerm_redis_cache" "redis" {
  name = "excertium-redis-cache"
  location = azurerm_resource_group.rg.location  
  resource_group_name = azurerm_resource_group.rg.name
  capacity = 1
  family = "C"
  sku_name = "Basic"
  enable_non_ssl_port = false
  minimum_tls_version = "1.2"

  redis_configuration {
    enable_authentication = false 
  }
}

