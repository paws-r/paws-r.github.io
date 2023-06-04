<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>auditmanager_get_organization_admin_account</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the name of the delegated Amazon Web Services administrator account for the organization

### Description

Returns the name of the delegated Amazon Web Services administrator
account for the organization.

### Usage

    auditmanager_get_organization_admin_account()

### Value

A list with the following syntax:

    list(
      adminAccountId = "string",
      organizationId = "string"
    )

### Request syntax

    svc$get_organization_admin_account()
