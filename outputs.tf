output "resource_lookup_api_version" {
  description = "Map of api_version values across all resource_lookup, keyed the same as var.resource_lookup except keys with no api_version are omitted"
  value       = { for k, v in data.kubernetes_resource.resource_lookup : k => v.api_version if v.api_version != null && length(v.api_version) > 0 }
}
output "resource_lookup_kind" {
  description = "Map of kind values across all resource_lookup, keyed the same as var.resource_lookup except keys with no kind are omitted"
  value       = { for k, v in data.kubernetes_resource.resource_lookup : k => v.kind if v.kind != null && length(v.kind) > 0 }
}
output "resource_lookup_metadata" {
  description = "Map of metadata values across all resource_lookup, keyed the same as var.resource_lookup except keys with no metadata are omitted"
  value       = { for k, v in data.kubernetes_resource.resource_lookup : k => one(v.metadata) if v.metadata != null && length(v.metadata) > 0 }
}
output "resource_lookup_object" {
  description = "Map of object values across all resource_lookup, keyed the same as var.resource_lookup except keys with no object are omitted"
  value       = { for k, v in data.kubernetes_resource.resource_lookup : k => v.object if v.object != null }
}

