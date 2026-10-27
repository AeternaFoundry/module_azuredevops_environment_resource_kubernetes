output "environment_resource_kubernetes_id" {
  description = "Map of id values across all environment_resource_kubernetes, keyed the same as var.environment_resource_kubernetes"
  value       = { for k, v in azuredevops_environment_resource_kubernetes.environment_resource_kubernetes : k => v.id }
}
output "environment_resource_kubernetes_cluster_name" {
  description = "Map of cluster_name values across all environment_resource_kubernetes, keyed the same as var.environment_resource_kubernetes"
  value       = { for k, v in azuredevops_environment_resource_kubernetes.environment_resource_kubernetes : k => v.cluster_name }
}
output "environment_resource_kubernetes_environment_id" {
  description = "Map of environment_id values across all environment_resource_kubernetes, keyed the same as var.environment_resource_kubernetes"
  value       = { for k, v in azuredevops_environment_resource_kubernetes.environment_resource_kubernetes : k => v.environment_id }
}
output "environment_resource_kubernetes_name" {
  description = "Map of name values across all environment_resource_kubernetes, keyed the same as var.environment_resource_kubernetes"
  value       = { for k, v in azuredevops_environment_resource_kubernetes.environment_resource_kubernetes : k => v.name }
}
output "environment_resource_kubernetes_namespace" {
  description = "Map of namespace values across all environment_resource_kubernetes, keyed the same as var.environment_resource_kubernetes"
  value       = { for k, v in azuredevops_environment_resource_kubernetes.environment_resource_kubernetes : k => v.namespace }
}
output "environment_resource_kubernetes_project_id" {
  description = "Map of project_id values across all environment_resource_kubernetes, keyed the same as var.environment_resource_kubernetes"
  value       = { for k, v in azuredevops_environment_resource_kubernetes.environment_resource_kubernetes : k => v.project_id }
}
output "environment_resource_kubernetes_service_endpoint_id" {
  description = "Map of service_endpoint_id values across all environment_resource_kubernetes, keyed the same as var.environment_resource_kubernetes"
  value       = { for k, v in azuredevops_environment_resource_kubernetes.environment_resource_kubernetes : k => v.service_endpoint_id }
}
output "environment_resource_kubernetes_tags" {
  description = "Map of tags values across all environment_resource_kubernetes, keyed the same as var.environment_resource_kubernetes"
  value       = { for k, v in azuredevops_environment_resource_kubernetes.environment_resource_kubernetes : k => v.tags }
}

