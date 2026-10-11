output "s3_bucket_metrics_id" {
  description = "Map of id values across all s3_bucket_metrics, keyed the same as var.s3_bucket_metrics"
  value       = { for k, v in aws_s3_bucket_metric.s3_bucket_metrics : k => v.id if v.id != null && length(v.id) > 0 }
}
output "s3_bucket_metrics_bucket" {
  description = "Map of bucket values across all s3_bucket_metrics, keyed the same as var.s3_bucket_metrics"
  value       = { for k, v in aws_s3_bucket_metric.s3_bucket_metrics : k => v.bucket if v.bucket != null && length(v.bucket) > 0 }
}
output "s3_bucket_metrics_filter" {
  description = "Map of filter values across all s3_bucket_metrics, keyed the same as var.s3_bucket_metrics"
  value       = { for k, v in aws_s3_bucket_metric.s3_bucket_metrics : k => one(v.filter) if v.filter != null && length(v.filter) > 0 }
}
output "s3_bucket_metrics_name" {
  description = "Map of name values across all s3_bucket_metrics, keyed the same as var.s3_bucket_metrics"
  value       = { for k, v in aws_s3_bucket_metric.s3_bucket_metrics : k => v.name if v.name != null && length(v.name) > 0 }
}
output "s3_bucket_metrics_region" {
  description = "Map of region values across all s3_bucket_metrics, keyed the same as var.s3_bucket_metrics"
  value       = { for k, v in aws_s3_bucket_metric.s3_bucket_metrics : k => v.region if v.region != null && length(v.region) > 0 }
}

