
variable ttl {
  type        = number
  default     = 3600
  description = "Default ttl in seconds."
}

variable long_ttl {
  type        = number
  default     = 86400
  description = ""
}

variable enable_acm_cert {
  type        = bool
  default     = true
  description = "Configure default ACM Domain"
}

variable enable_outlook {
  type        = bool
  default     = false
  description = "Configure DNS for Microsoft Outlook"
}

variable outlook_mx_prefix {
  type        = string
  default     = null
  description = "The MX prefix to .mail.protection.outlook.com."
}

variable enable_fastmail {
  type        = bool
  default     = false
  description = "Configure DNS for fastmail.com"
}

variable fastmail_web_hostname {
  type        = string
  default     = "mail"
  description = "the hostname to access fastmail, such as mail -> mail.acme.com. Set to null to disable"
}

variable fastmail_extra_spf {
  type        = string
  default     = ""
  description = "If you need to add extra configuration information to the SPF record."
}

variable enable_fastmail_mailchimp {
  type        = bool
  default     = false
  description = "Add the required for SPF and TXT records for mail to be sent from mailchimp."
}

variable fastmail_mailchimp_extra_spf {
  type        = string
  default     = null
  description = "Mailchmp SPF record"
}

variable enable_mailgun {
  type        = bool
  default     = false
  description = "Configure DNS for mailgun"
}

variable subdomain_name_servers {
  type        = map(list(string))
  default     = {}
  description = "A map of <name> : [name servers]"
}

variable cnames {
  type        = map(list(string))
  default     = {}
  description = "A map of <name> : [values]"
}

variable txts {
  type        = map(list(string))
  default     = {}
  description = "A map of <name> : [values]"
}