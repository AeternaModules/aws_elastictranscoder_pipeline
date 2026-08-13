variable "elastictranscoder_pipelines" {
  description = <<EOT
Map of elastictranscoder_pipelines, attributes below
Required:
    - input_bucket
    - role
Optional:
    - aws_kms_key_arn
    - name
    - output_bucket
    - region
    - content_config (block):
        - bucket (optional)
        - storage_class (optional)
    - content_config_permissions (block):
        - access (optional)
        - grantee (optional)
        - grantee_type (optional)
    - notifications (block):
        - completed (optional)
        - error (optional)
        - progressing (optional)
        - warning (optional)
    - thumbnail_config (block):
        - bucket (optional)
        - storage_class (optional)
    - thumbnail_config_permissions (block):
        - access (optional)
        - grantee (optional)
        - grantee_type (optional)
EOT

  type = map(object({
    input_bucket    = string
    role            = string
    aws_kms_key_arn = optional(string)
    name            = optional(string)
    output_bucket   = optional(string)
    region          = optional(string)
    content_config = optional(object({
      bucket        = optional(string)
      storage_class = optional(string)
    }))
    content_config_permissions = optional(list(object({
      access       = optional(list(string))
      grantee      = optional(string)
      grantee_type = optional(string)
    })))
    notifications = optional(object({
      completed   = optional(string)
      error       = optional(string)
      progressing = optional(string)
      warning     = optional(string)
    }))
    thumbnail_config = optional(object({
      bucket        = optional(string)
      storage_class = optional(string)
    }))
    thumbnail_config_permissions = optional(list(object({
      access       = optional(list(string))
      grantee      = optional(string)
      grantee_type = optional(string)
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.elastictranscoder_pipelines : (
        v.content_config_permissions == null || alltrue([for item in v.content_config_permissions : (item.access == null || (alltrue([for x in item.access : contains(["Read", "ReadAcp", "WriteAcp", "FullControl"], x)])))])
      )
    ])
    error_message = "must be one of: Read, ReadAcp, WriteAcp, FullControl"
  }
  validation {
    condition = alltrue([
      for k, v in var.elastictranscoder_pipelines : (
        v.content_config_permissions == null || alltrue([for item in v.content_config_permissions : (item.grantee_type == null || (contains(["Canonical", "Email", "Group"], item.grantee_type)))])
      )
    ])
    error_message = "must be one of: Canonical, Email, Group"
  }
  validation {
    condition = alltrue([
      for k, v in var.elastictranscoder_pipelines : (
        v.thumbnail_config_permissions == null || alltrue([for item in v.thumbnail_config_permissions : (item.access == null || (alltrue([for x in item.access : contains(["Read", "ReadAcp", "WriteAcp", "FullControl"], x)])))])
      )
    ])
    error_message = "must be one of: Read, ReadAcp, WriteAcp, FullControl"
  }
  validation {
    condition = alltrue([
      for k, v in var.elastictranscoder_pipelines : (
        v.thumbnail_config_permissions == null || alltrue([for item in v.thumbnail_config_permissions : (item.grantee_type == null || (contains(["Canonical", "Email", "Group"], item.grantee_type)))])
      )
    ])
    error_message = "must be one of: Canonical, Email, Group"
  }
  # Note: 9 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

