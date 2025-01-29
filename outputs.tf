output "private_endpoint_name" {
  value       = azurerm_private_endpoint.private_endpoint.name
  description = "The name of the Private Endpoint."
}

output "private_endpoint_id" {
  value       = azurerm_private_endpoint.private_endpoint.id
  description = "The ID of the Private Endpoint."
}

output "private_ip" {
  value       = azurerm_private_endpoint.private_endpoint.private_service_connection.0.private_ip_address
  description = "The Private IP Address associated with the Private Endpoint."
}

output "custom_dns_configs" {
  value       = azurerm_private_endpoint.private_endpoint.custom_dns_configs
  description = "The FQDN and a list of all the IP Addresses that map to the Private Endpoint FQDN."
}

output "nic_id" {
  value       = azurerm_private_endpoint.private_endpoint.network_interface.0.id
  description = "The ID of the Private Endpoint Network Interface."
}