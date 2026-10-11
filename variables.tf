variable "environment_resource_kubernetes" {
  description = <<EOT
Map of environment_resource_kubernetes, attributes below
Required:
    - environment_id
    - name
    - namespace
    - project_id
    - service_endpoint_id
Optional:
    - cluster_name
    - tags
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
EOT

  type = map(object({
    environment_id      = number
    name                = string
    namespace           = string
    project_id          = string
    service_endpoint_id = string
    cluster_name        = optional(string)
    tags                = optional(set(string))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.environment_resource_kubernetes : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.project_id))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.environment_resource_kubernetes : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.service_endpoint_id))
      )
    ])
    error_message = "must be a valid UUID"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

