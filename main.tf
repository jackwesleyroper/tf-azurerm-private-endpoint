resource "azurerm_private_endpoint" "private_endpoint" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  subnet_id           = var.subnet_id
  tags                = var.tags

  private_service_connection {
    name                           = var.private_service_connection_name
    private_connection_resource_id = var.private_connection_resource_id
    is_manual_connection           = var.is_manual_connection
    subresource_names              = [var.subresource_name]
  }

  dynamic "private_dns_zone_group" {
    for_each = var.private_dns_zone_id != null ? [{}] : []

    content {
      name                 = var.private_dns_zone_group_name
      private_dns_zone_ids = var.private_dns_zone_id
    }
  }

  dynamic "ip_configuration" {
    for_each = var.private_ip_address != null ? [{}] : []

    content {
      name               = "PrivateIpConfig"
      private_ip_address = var.private_ip_address
      subresource_name   = var.subresource_name
      member_name        = var.member_name
    }
  }

}
