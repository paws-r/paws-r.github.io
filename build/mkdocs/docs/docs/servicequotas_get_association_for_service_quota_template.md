<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicequotas_get_association_for_service_quota_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the status of the association for the quota request template

### Description

Retrieves the status of the association for the quota request template.

### Usage

    servicequotas_get_association_for_service_quota_template()

### Value

A list with the following syntax:

    list(
      ServiceQuotaTemplateAssociationStatus = "ASSOCIATED"|"DISASSOCIATED"
    )

### Request syntax

    svc$get_association_for_service_quota_template()
