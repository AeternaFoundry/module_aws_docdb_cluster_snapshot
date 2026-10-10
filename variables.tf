variable "docdb_cluster_snapshots" {
  description = <<EOT
Map of docdb_cluster_snapshots, attributes below
Required:
    - db_cluster_identifier
    - db_cluster_snapshot_identifier
Optional:
    - region
EOT

  type = map(object({
    db_cluster_identifier          = string
    db_cluster_snapshot_identifier = string
    region                         = optional(string)
  }))
  # Note: 8 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

