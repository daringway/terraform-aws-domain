
variable enable_fastmail {
  type = bool
  default = false
  description = "Configure DNS for fastmail.com"
}

variable fastmail_web_hostname {
  type = string
  default = "mail"
  description = "the hostname to access fastmail, such as mail -> mail.acme.com. Set to null to disable"
}

variable fastmail_extra_spf {
  type        = string
  default     = ""
  description = "If you need to add extra configuration information to the SPF record."
}

variable enable_fastmail_mailchimp {
  type = bool
  default = false
  description = "Add the required for SPF and TXT records for mail to be sent from mailchimp."
}

variable fastmail_mailchimp_extra_spf {
  type = string
  default = null
  description = "Mailchmp SPF record"
}

variable enable_mailgun {
  type = bool
  default = false
  description = "Configure DNS for mailgun"
}