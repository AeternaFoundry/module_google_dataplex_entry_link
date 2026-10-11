variable "dataplex_entry_links" {
  description = <<EOT
Map of dataplex_entry_links, attributes below
Required:
    - entry_group_id
    - entry_link_id
    - entry_link_type
    - location
    - entry_references (block):
        - name (required)
        - path (optional)
        - type (optional)
Optional:
    - deletion_policy
    - project
    - aspects (block):
        - aspect (required, block):
            - data (required)
        - aspect_key (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    entry_group_id  = string
    entry_link_id   = string
    entry_link_type = string
    location        = string
    deletion_policy = optional(string)
    project         = optional(string)
    entry_references = list(object({
      name = string
      path = optional(string)
      type = optional(string)
    }))
    aspects = optional(list(object({
      aspect = object({
        data = string
      })
      aspect_key = string
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.dataplex_entry_links : (
        length(v.entry_references) >= 1
      )
    ])
    error_message = "Each entry_references list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.dataplex_entry_links : (
        v.aspects == null || alltrue([for item in v.aspects : (can(jsondecode(item.aspect.data)))])
      )
    ])
    error_message = "must be valid JSON"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

