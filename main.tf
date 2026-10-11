resource "oci_streaming_stream_pool" "streaming_stream_pools" {
  for_each = var.streaming_stream_pools

  compartment_id      = each.value.compartment_id
  name                = each.value.name
  defined_tags        = each.value.defined_tags
  freeform_tags       = each.value.freeform_tags
  security_attributes = each.value.security_attributes

  dynamic "custom_encryption_key" {
    for_each = each.value.custom_encryption_key != null ? [each.value.custom_encryption_key] : []
    content {
      kms_key_id = custom_encryption_key.value.kms_key_id
    }
  }

  dynamic "kafka_settings" {
    for_each = each.value.kafka_settings != null ? [each.value.kafka_settings] : []
    content {
      auto_create_topics_enable = kafka_settings.value.auto_create_topics_enable
      log_retention_hours       = kafka_settings.value.log_retention_hours
      num_partitions            = kafka_settings.value.num_partitions
    }
  }

  dynamic "private_endpoint_settings" {
    for_each = each.value.private_endpoint_settings != null ? [each.value.private_endpoint_settings] : []
    content {
      nsg_ids             = private_endpoint_settings.value.nsg_ids
      private_endpoint_ip = private_endpoint_settings.value.private_endpoint_ip
      subnet_id           = private_endpoint_settings.value.subnet_id
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

