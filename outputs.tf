output "dataplex_entry_links_id" {
  description = "Map of id values across all dataplex_entry_links, keyed the same as var.dataplex_entry_links except keys with no id are omitted"
  value       = { for k, v in google_dataplex_entry_link.dataplex_entry_links : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dataplex_entry_links_aspects" {
  description = "Map of aspects values across all dataplex_entry_links, keyed the same as var.dataplex_entry_links except keys with no aspects are omitted"
  value       = { for k, v in google_dataplex_entry_link.dataplex_entry_links : k => v.aspects if v.aspects != null && length(v.aspects) > 0 }
}
output "dataplex_entry_links_create_time" {
  description = "Map of create_time values across all dataplex_entry_links, keyed the same as var.dataplex_entry_links except keys with no create_time are omitted"
  value       = { for k, v in google_dataplex_entry_link.dataplex_entry_links : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "dataplex_entry_links_deletion_policy" {
  description = "Map of deletion_policy values across all dataplex_entry_links, keyed the same as var.dataplex_entry_links except keys with no deletion_policy are omitted"
  value       = { for k, v in google_dataplex_entry_link.dataplex_entry_links : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "dataplex_entry_links_entry_group_id" {
  description = "Map of entry_group_id values across all dataplex_entry_links, keyed the same as var.dataplex_entry_links except keys with no entry_group_id are omitted"
  value       = { for k, v in google_dataplex_entry_link.dataplex_entry_links : k => v.entry_group_id if v.entry_group_id != null && length(v.entry_group_id) > 0 }
}
output "dataplex_entry_links_entry_link_id" {
  description = "Map of entry_link_id values across all dataplex_entry_links, keyed the same as var.dataplex_entry_links except keys with no entry_link_id are omitted"
  value       = { for k, v in google_dataplex_entry_link.dataplex_entry_links : k => v.entry_link_id if v.entry_link_id != null && length(v.entry_link_id) > 0 }
}
output "dataplex_entry_links_entry_link_type" {
  description = "Map of entry_link_type values across all dataplex_entry_links, keyed the same as var.dataplex_entry_links except keys with no entry_link_type are omitted"
  value       = { for k, v in google_dataplex_entry_link.dataplex_entry_links : k => v.entry_link_type if v.entry_link_type != null && length(v.entry_link_type) > 0 }
}
output "dataplex_entry_links_entry_references" {
  description = "Map of entry_references values across all dataplex_entry_links, keyed the same as var.dataplex_entry_links except keys with no entry_references are omitted"
  value       = { for k, v in google_dataplex_entry_link.dataplex_entry_links : k => v.entry_references if v.entry_references != null && length(v.entry_references) > 0 }
}
output "dataplex_entry_links_location" {
  description = "Map of location values across all dataplex_entry_links, keyed the same as var.dataplex_entry_links except keys with no location are omitted"
  value       = { for k, v in google_dataplex_entry_link.dataplex_entry_links : k => v.location if v.location != null && length(v.location) > 0 }
}
output "dataplex_entry_links_name" {
  description = "Map of name values across all dataplex_entry_links, keyed the same as var.dataplex_entry_links except keys with no name are omitted"
  value       = { for k, v in google_dataplex_entry_link.dataplex_entry_links : k => v.name if v.name != null && length(v.name) > 0 }
}
output "dataplex_entry_links_project" {
  description = "Map of project values across all dataplex_entry_links, keyed the same as var.dataplex_entry_links except keys with no project are omitted"
  value       = { for k, v in google_dataplex_entry_link.dataplex_entry_links : k => v.project if v.project != null && length(v.project) > 0 }
}
output "dataplex_entry_links_update_time" {
  description = "Map of update_time values across all dataplex_entry_links, keyed the same as var.dataplex_entry_links except keys with no update_time are omitted"
  value       = { for k, v in google_dataplex_entry_link.dataplex_entry_links : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

