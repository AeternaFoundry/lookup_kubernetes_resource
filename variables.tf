variable "resource_lookup" {
  description = <<EOT
Map of resource_lookup, attributes below
Required:
    - api_version
    - kind
    - metadata (block):
        - name (required)
        - namespace (optional)
Optional:
    - object
EOT

  type = map(object({
    api_version = string
    kind        = string
    object      = optional(any)
    metadata = object({
      name      = string
      namespace = optional(string)
    })
  }))
}

