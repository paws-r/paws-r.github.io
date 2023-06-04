<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>auditmanager_register_organization_admin_account</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enables an Amazon Web Services account within the organization as the delegated administrator for Audit Manager

### Description

Enables an Amazon Web Services account within the organization as the
delegated administrator for Audit Manager.

### Usage

    auditmanager_register_organization_admin_account(adminAccountId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="auditmanager_register_organization_admin_account_:_adminAccountId">adminAccountId</code></td>
<td><p>[required] The identifier for the delegated administrator
account.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      adminAccountId = "string",
      organizationId = "string"
    )

### Request syntax

    svc$register_organization_admin_account(
      adminAccountId = "string"
    )
