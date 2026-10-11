output "k6_project_allowed_load_zones_lookup_id" {
  description = "Map of id values across all k6_project_allowed_load_zones_lookup, keyed the same as var.k6_project_allowed_load_zones_lookup except keys with no id are omitted"
  value       = { for k, v in data.grafana_k6_project_allowed_load_zones.k6_project_allowed_load_zones_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "k6_project_allowed_load_zones_lookup_allowed_load_zones" {
  description = "Map of allowed_load_zones values across all k6_project_allowed_load_zones_lookup, keyed the same as var.k6_project_allowed_load_zones_lookup except keys with no allowed_load_zones are omitted"
  value       = { for k, v in data.grafana_k6_project_allowed_load_zones.k6_project_allowed_load_zones_lookup : k => v.allowed_load_zones if v.allowed_load_zones != null && length(v.allowed_load_zones) > 0 }
}
output "k6_project_allowed_load_zones_lookup_project_id" {
  description = "Map of project_id values across all k6_project_allowed_load_zones_lookup, keyed the same as var.k6_project_allowed_load_zones_lookup except keys with no project_id are omitted"
  value       = { for k, v in data.grafana_k6_project_allowed_load_zones.k6_project_allowed_load_zones_lookup : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}

