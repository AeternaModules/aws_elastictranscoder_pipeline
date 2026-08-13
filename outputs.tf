output "elastictranscoder_pipelines_id" {
  description = "Map of id values across all elastictranscoder_pipelines, keyed the same as var.elastictranscoder_pipelines"
  value       = { for k, v in aws_elastictranscoder_pipeline.elastictranscoder_pipelines : k => v.id if v.id != null && length(v.id) > 0 }
}
output "elastictranscoder_pipelines_arn" {
  description = "Map of arn values across all elastictranscoder_pipelines, keyed the same as var.elastictranscoder_pipelines"
  value       = { for k, v in aws_elastictranscoder_pipeline.elastictranscoder_pipelines : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "elastictranscoder_pipelines_aws_kms_key_arn" {
  description = "Map of aws_kms_key_arn values across all elastictranscoder_pipelines, keyed the same as var.elastictranscoder_pipelines"
  value       = { for k, v in aws_elastictranscoder_pipeline.elastictranscoder_pipelines : k => v.aws_kms_key_arn if v.aws_kms_key_arn != null && length(v.aws_kms_key_arn) > 0 }
}
output "elastictranscoder_pipelines_content_config" {
  description = "Map of content_config values across all elastictranscoder_pipelines, keyed the same as var.elastictranscoder_pipelines"
  value       = { for k, v in aws_elastictranscoder_pipeline.elastictranscoder_pipelines : k => v.content_config if v.content_config != null && length(v.content_config) > 0 }
}
output "elastictranscoder_pipelines_content_config_permissions" {
  description = "Map of content_config_permissions values across all elastictranscoder_pipelines, keyed the same as var.elastictranscoder_pipelines"
  value       = { for k, v in aws_elastictranscoder_pipeline.elastictranscoder_pipelines : k => v.content_config_permissions if v.content_config_permissions != null && length(v.content_config_permissions) > 0 }
}
output "elastictranscoder_pipelines_input_bucket" {
  description = "Map of input_bucket values across all elastictranscoder_pipelines, keyed the same as var.elastictranscoder_pipelines"
  value       = { for k, v in aws_elastictranscoder_pipeline.elastictranscoder_pipelines : k => v.input_bucket if v.input_bucket != null && length(v.input_bucket) > 0 }
}
output "elastictranscoder_pipelines_name" {
  description = "Map of name values across all elastictranscoder_pipelines, keyed the same as var.elastictranscoder_pipelines"
  value       = { for k, v in aws_elastictranscoder_pipeline.elastictranscoder_pipelines : k => v.name if v.name != null && length(v.name) > 0 }
}
output "elastictranscoder_pipelines_notifications" {
  description = "Map of notifications values across all elastictranscoder_pipelines, keyed the same as var.elastictranscoder_pipelines"
  value       = { for k, v in aws_elastictranscoder_pipeline.elastictranscoder_pipelines : k => v.notifications if v.notifications != null && length(v.notifications) > 0 }
}
output "elastictranscoder_pipelines_output_bucket" {
  description = "Map of output_bucket values across all elastictranscoder_pipelines, keyed the same as var.elastictranscoder_pipelines"
  value       = { for k, v in aws_elastictranscoder_pipeline.elastictranscoder_pipelines : k => v.output_bucket if v.output_bucket != null && length(v.output_bucket) > 0 }
}
output "elastictranscoder_pipelines_region" {
  description = "Map of region values across all elastictranscoder_pipelines, keyed the same as var.elastictranscoder_pipelines"
  value       = { for k, v in aws_elastictranscoder_pipeline.elastictranscoder_pipelines : k => v.region if v.region != null && length(v.region) > 0 }
}
output "elastictranscoder_pipelines_role" {
  description = "Map of role values across all elastictranscoder_pipelines, keyed the same as var.elastictranscoder_pipelines"
  value       = { for k, v in aws_elastictranscoder_pipeline.elastictranscoder_pipelines : k => v.role if v.role != null && length(v.role) > 0 }
}
output "elastictranscoder_pipelines_thumbnail_config" {
  description = "Map of thumbnail_config values across all elastictranscoder_pipelines, keyed the same as var.elastictranscoder_pipelines"
  value       = { for k, v in aws_elastictranscoder_pipeline.elastictranscoder_pipelines : k => v.thumbnail_config if v.thumbnail_config != null && length(v.thumbnail_config) > 0 }
}
output "elastictranscoder_pipelines_thumbnail_config_permissions" {
  description = "Map of thumbnail_config_permissions values across all elastictranscoder_pipelines, keyed the same as var.elastictranscoder_pipelines"
  value       = { for k, v in aws_elastictranscoder_pipeline.elastictranscoder_pipelines : k => v.thumbnail_config_permissions if v.thumbnail_config_permissions != null && length(v.thumbnail_config_permissions) > 0 }
}

