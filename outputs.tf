output "primary_access_key" {
  value = "$(data.azurerm_redis_cache.redis.primary_access_key)"
}

output "hostname" {
  value = "$(data.azurerm_redis_cache.redis.hostname)"
}
