data "kubernetes_resource" "resource_lookup" {
  for_each = var.resource_lookup

  api_version = each.value.api_version
  kind        = each.value.kind
  object      = each.value.object

  metadata {
    name      = each.value.metadata.name
    namespace = each.value.metadata.namespace
  }
}

