variable "email" {
  description = "Where service announcements will be sent"
  type        = string
}

variable "costcentre" {
  description = "The relevant PD**** code for the project/product. An N**** cost centre is used by exception when the costs are budgeted as such."
  type        = string
}

variable "live" {
  description = "Crucial to correctly account for costs as either capex or opex. Choice of \"yes\" or \"no\""
  type        = string
  validation {
    condition     = can(regex("yes|no|NO", var.live))
    error_message = "Must be \"yes\" or \"no\"."
  }
}

variable "servicecatalogID" {
  description = "Way of identifying application resources by the recognised reference number held in ServiceNow and MEGA"
  type        = string
}

variable "dataRetention" {
  description = "To determine how long data should be retained within a particular datastore. Choice of:\n\"1-month\"\n \"7-months\"\n \"14-months\"\n \"4-years\"\n \"7-years\"\n \">7-years\"\n"
  type        = string
  validation {
    condition = can(regex(
      "1-month|7-months|14-months|4-years|7-years|>7-years",
      var.dataRetention
    ))
    error_message = "Must be one of \"1-month|7-months|14-months|4-years|7-years|>7-years\"."
  }
}

variable "dataClassification" {
  description = "To determine how the data held or flowing through a resource should be treated. Choice of:\n\"public\"\n \"confidential\"\n \"highlySensitive\"\n \"highlySensitivePersonal\"\n "
  type        = string
  validation {
    condition = can(regex(
      "public|confidential|highlySensitive|highlySensitivePersonal",
      var.dataClassification
    ))
    error_message = "Must be one of \"public|confidential|highlySensitive|highlySensitivePersonal\"."
  }
}

variable "environment" {
  description = "The environment associated with resource. dev, test, stg, prod, etc."
  type        = string
}


