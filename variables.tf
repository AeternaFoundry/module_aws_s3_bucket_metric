variable "s3_bucket_metrics" {
  description = <<EOT
Map of s3_bucket_metrics, attributes below
Required:
    - bucket
    - name
Optional:
    - region
    - filter (block):
        - access_point (optional)
        - prefix (optional)
        - tags (optional)
EOT

  type = map(object({
    bucket = string
    name   = string
    region = optional(string)
    filter = optional(object({
      access_point = optional(string)
      prefix       = optional(string)
      tags         = optional(map(string))
    }))
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

