output "streaming_stream_pools_id" {
  description = "Map of id values across all streaming_stream_pools, keyed the same as var.streaming_stream_pools except keys with no id are omitted"
  value       = { for k, v in oci_streaming_stream_pool.streaming_stream_pools : k => v.id if v.id != null && length(v.id) > 0 }
}
output "streaming_stream_pools_compartment_id" {
  description = "Map of compartment_id values across all streaming_stream_pools, keyed the same as var.streaming_stream_pools except keys with no compartment_id are omitted"
  value       = { for k, v in oci_streaming_stream_pool.streaming_stream_pools : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "streaming_stream_pools_custom_encryption_key" {
  description = "Map of custom_encryption_key values across all streaming_stream_pools, keyed the same as var.streaming_stream_pools except keys with no custom_encryption_key are omitted"
  value       = { for k, v in oci_streaming_stream_pool.streaming_stream_pools : k => one(v.custom_encryption_key) if v.custom_encryption_key != null && length(v.custom_encryption_key) > 0 }
}
output "streaming_stream_pools_defined_tags" {
  description = "Map of defined_tags values across all streaming_stream_pools, keyed the same as var.streaming_stream_pools except keys with no defined_tags are omitted"
  value       = { for k, v in oci_streaming_stream_pool.streaming_stream_pools : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "streaming_stream_pools_endpoint_fqdn" {
  description = "Map of endpoint_fqdn values across all streaming_stream_pools, keyed the same as var.streaming_stream_pools except keys with no endpoint_fqdn are omitted"
  value       = { for k, v in oci_streaming_stream_pool.streaming_stream_pools : k => v.endpoint_fqdn if v.endpoint_fqdn != null && length(v.endpoint_fqdn) > 0 }
}
output "streaming_stream_pools_freeform_tags" {
  description = "Map of freeform_tags values across all streaming_stream_pools, keyed the same as var.streaming_stream_pools except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_streaming_stream_pool.streaming_stream_pools : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "streaming_stream_pools_is_private" {
  description = "Map of is_private values across all streaming_stream_pools, keyed the same as var.streaming_stream_pools except keys with no is_private are omitted"
  value       = { for k, v in oci_streaming_stream_pool.streaming_stream_pools : k => v.is_private if v.is_private != null }
}
output "streaming_stream_pools_kafka_settings" {
  description = "Map of kafka_settings values across all streaming_stream_pools, keyed the same as var.streaming_stream_pools except keys with no kafka_settings are omitted"
  value       = { for k, v in oci_streaming_stream_pool.streaming_stream_pools : k => one(v.kafka_settings) if v.kafka_settings != null && length(v.kafka_settings) > 0 }
}
output "streaming_stream_pools_lifecycle_state_details" {
  description = "Map of lifecycle_state_details values across all streaming_stream_pools, keyed the same as var.streaming_stream_pools except keys with no lifecycle_state_details are omitted"
  value       = { for k, v in oci_streaming_stream_pool.streaming_stream_pools : k => v.lifecycle_state_details if v.lifecycle_state_details != null && length(v.lifecycle_state_details) > 0 }
}
output "streaming_stream_pools_name" {
  description = "Map of name values across all streaming_stream_pools, keyed the same as var.streaming_stream_pools except keys with no name are omitted"
  value       = { for k, v in oci_streaming_stream_pool.streaming_stream_pools : k => v.name if v.name != null && length(v.name) > 0 }
}
output "streaming_stream_pools_private_endpoint_settings" {
  description = "Map of private_endpoint_settings values across all streaming_stream_pools, keyed the same as var.streaming_stream_pools except keys with no private_endpoint_settings are omitted"
  value       = { for k, v in oci_streaming_stream_pool.streaming_stream_pools : k => one(v.private_endpoint_settings) if v.private_endpoint_settings != null && length(v.private_endpoint_settings) > 0 }
}
output "streaming_stream_pools_security_attributes" {
  description = "Map of security_attributes values across all streaming_stream_pools, keyed the same as var.streaming_stream_pools except keys with no security_attributes are omitted"
  value       = { for k, v in oci_streaming_stream_pool.streaming_stream_pools : k => v.security_attributes if v.security_attributes != null && length(v.security_attributes) > 0 }
}
output "streaming_stream_pools_state" {
  description = "Map of state values across all streaming_stream_pools, keyed the same as var.streaming_stream_pools except keys with no state are omitted"
  value       = { for k, v in oci_streaming_stream_pool.streaming_stream_pools : k => v.state if v.state != null && length(v.state) > 0 }
}
output "streaming_stream_pools_time_created" {
  description = "Map of time_created values across all streaming_stream_pools, keyed the same as var.streaming_stream_pools except keys with no time_created are omitted"
  value       = { for k, v in oci_streaming_stream_pool.streaming_stream_pools : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}

