
variable tags {
  type        = map(string)
  description = "List of AWS tags"
}

variable zone_id {
  type        = string
  description = "The route53 zone id"
}

variable mx_prefix {
  type        = string
  description = "Prefix to .mail.protection.output.com"
}

variable ttl {
  type        = number
  description = "The DNS TTL for all records."
}

variable enable_mailchimp {
  type        = bool
  description = "Add the required for SPF and TXT records for mail to be sent from mailchimp."
}

