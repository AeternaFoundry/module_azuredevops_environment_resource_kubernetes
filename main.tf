resource "azuredevops_environment_resource_kubernetes" "environment_resource_kubernetes" {
  for_each = var.environment_resource_kubernetes

  environment_id      = each.value.environment_id
  name                = each.value.name
  namespace           = each.value.namespace
  project_id          = each.value.project_id
  service_endpoint_id = each.value.service_endpoint_id
  cluster_name        = each.value.cluster_name
  tags                = each.value.tags

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
    }
  }
}

