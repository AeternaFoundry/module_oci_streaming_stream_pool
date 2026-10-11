variable "streaming_stream_pools" {
  description = <<EOT
Map of streaming_stream_pools, attributes below
Required:
    - compartment_id
    - name
Optional:
    - defined_tags
    - freeform_tags
    - security_attributes
    - custom_encryption_key (block):
        - kms_key_id (required)
    - kafka_settings (block):
        - auto_create_topics_enable (optional)
        - log_retention_hours (optional)
        - num_partitions (optional)
    - private_endpoint_settings (block):
        - nsg_ids (optional)
        - private_endpoint_ip (optional)
        - subnet_id (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id      = string
    name                = string
    defined_tags        = optional(map(string))
    freeform_tags       = optional(map(string))
    security_attributes = optional(map(string))
    custom_encryption_key = optional(object({
      kms_key_id = string
    }))
    kafka_settings = optional(object({
      auto_create_topics_enable = optional(bool)
      log_retention_hours       = optional(number)
      num_partitions            = optional(number)
    }))
    private_endpoint_settings = optional(object({
      nsg_ids             = optional(set(string))
      private_endpoint_ip = optional(string)
      subnet_id           = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

