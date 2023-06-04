<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_get_aws_organizations_access_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get the Access Status for Organizations portfolio share feature

### Description

Get the Access Status for Organizations portfolio share feature. This
API can only be called by the management account in the organization or
by a delegated admin.

### Usage

    servicecatalog_get_aws_organizations_access_status()

### Value

A list with the following syntax:

    list(
      AccessStatus = "ENABLED"|"UNDER_CHANGE"|"DISABLED"
    )

### Request syntax

    svc$get_aws_organizations_access_status()
