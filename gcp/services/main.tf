resource "google_project_service" "default" {
  project = var.project_id
  for_each = toset(var.services)
  service                    = each.key
  disable_on_destroy         = var.disable_on_destroy
  disable_dependent_services = var.disable_dependent_services
}