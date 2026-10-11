resource "google_dataplex_entry_link" "dataplex_entry_links" {
  for_each = var.dataplex_entry_links

  entry_group_id  = each.value.entry_group_id
  entry_link_id   = each.value.entry_link_id
  entry_link_type = each.value.entry_link_type
  location        = each.value.location
  deletion_policy = each.value.deletion_policy
  project         = each.value.project

  dynamic "entry_references" {
    for_each = each.value.entry_references
    content {
      name = entry_references.value.name
      path = entry_references.value.path
      type = entry_references.value.type
    }
  }

  dynamic "aspects" {
    for_each = each.value.aspects != null ? each.value.aspects : []
    content {
      aspect {
        data = aspects.value.aspect.data
      }
      aspect_key = aspects.value.aspect_key
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

