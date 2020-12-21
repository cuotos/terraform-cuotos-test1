locals {
  tags = {
    "email"              = var.email
    "costcentre"         = var.costcentre
    "live"               = var.live
    "servicecatalogID"   = var.servicecatalogID
    "dataRetention"      = var.dataRetention
    "dataClassification" = var.dataClassification
    "environment"        = var.environment
  }
}

output "tags" {
  value = local.tags
  description = "All the required Sainsburys billing tags."
}
