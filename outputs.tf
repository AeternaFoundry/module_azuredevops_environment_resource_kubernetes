output "environment_resource_kubernetes_id" {
  description = "Map of id values across all environment_resource_kubernetes, keyed the same as var.environment_resource_kubernetes except keys with no id are omitted"
  value       = { for k, v in azuredevops_environment_resource_kubernetes.environment_resource_kubernetes : k => v.id if v.id != null && length(v.id) > 0 }
}
output "environment_resource_kubernetes_cluster_name" {
  description = "Map of cluster_name values across all environment_resource_kubernetes, keyed the same as var.environment_resource_kubernetes except keys with no cluster_name are omitted"
  value       = { for k, v in azuredevops_environment_resource_kubernetes.environment_resource_kubernetes : k => v.cluster_name if v.cluster_name != null && length(v.cluster_name) > 0 }
}
output "environment_resource_kubernetes_environment_id" {
  description = "Map of environment_id values across all environment_resource_kubernetes, keyed the same as var.environment_resource_kubernetes except keys with no environment_id are omitted"
  value       = { for k, v in azuredevops_environment_resource_kubernetes.environment_resource_kubernetes : k => v.environment_id if v.environment_id != null }
}
output "environment_resource_kubernetes_name" {
  description = "Map of name values across all environment_resource_kubernetes, keyed the same as var.environment_resource_kubernetes except keys with no name are omitted"
  value       = { for k, v in azuredevops_environment_resource_kubernetes.environment_resource_kubernetes : k => v.name if v.name != null && length(v.name) > 0 }
}
output "environment_resource_kubernetes_namespace" {
  description = "Map of namespace values across all environment_resource_kubernetes, keyed the same as var.environment_resource_kubernetes except keys with no namespace are omitted"
  value       = { for k, v in azuredevops_environment_resource_kubernetes.environment_resource_kubernetes : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "environment_resource_kubernetes_project_id" {
  description = "Map of project_id values across all environment_resource_kubernetes, keyed the same as var.environment_resource_kubernetes except keys with no project_id are omitted"
  value       = { for k, v in azuredevops_environment_resource_kubernetes.environment_resource_kubernetes : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "environment_resource_kubernetes_service_endpoint_id" {
  description = "Map of service_endpoint_id values across all environment_resource_kubernetes, keyed the same as var.environment_resource_kubernetes except keys with no service_endpoint_id are omitted"
  value       = { for k, v in azuredevops_environment_resource_kubernetes.environment_resource_kubernetes : k => v.service_endpoint_id if v.service_endpoint_id != null && length(v.service_endpoint_id) > 0 }
}
output "environment_resource_kubernetes_tags" {
  description = "Map of tags values across all environment_resource_kubernetes, keyed the same as var.environment_resource_kubernetes except keys with no tags are omitted"
  value       = { for k, v in azuredevops_environment_resource_kubernetes.environment_resource_kubernetes : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

