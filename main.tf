data "grafana_k6_project_allowed_load_zones" "k6_project_allowed_load_zones_lookup" {
  for_each = var.k6_project_allowed_load_zones_lookup

  project_id = each.value.project_id
}

