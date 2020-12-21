## Requirements

No requirements.

## Providers

No provider.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| costcentre | The relevant PD\*\*\*\* code for the project/product. An N\*\*\*\* cost centre is used by exception when the costs are budgeted as such. | `string` | n/a | yes |
| dataClassification | To determine how the data held or flowing through a resource should be treated. Choice of:<br>"public"<br> "confidential"<br> "highlySensitive"<br> "highlySensitivePersonal" | `string` | n/a | yes |
| dataRetention | To determine how long data should be retained within a particular datastore. Choice of:<br>"1-month"<br> "7-months"<br> "14-months"<br> "4-years"<br> "7-years"<br> ">7-years" | `string` | n/a | yes |
| email | Where service announcements will be sent | `string` | n/a | yes |
| environment | The environment associated with resource. dev, test, stg, prod, etc. | `string` | n/a | yes |
| live | Crucial to correctly account for costs as either capex or opex. Choice of "yes" or "no" | `string` | n/a | yes |
| servicecatalogID | Way of identifying application resources by the recognised reference number held in ServiceNow and MEGA | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| tags | All the required Sainsburys billing tags. |

