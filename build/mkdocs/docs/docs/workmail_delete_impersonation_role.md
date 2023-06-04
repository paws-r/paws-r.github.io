<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_delete_impersonation_role</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an impersonation role for the given WorkMail organization

### Description

Deletes an impersonation role for the given WorkMail organization.

### Usage

    workmail_delete_impersonation_role(OrganizationId, ImpersonationRoleId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_delete_impersonation_role_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The WorkMail organization from which to delete the
impersonation role.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_delete_impersonation_role_:_ImpersonationRoleId">ImpersonationRoleId</code></td>
<td><p>[required] The ID of the impersonation role to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_impersonation_role(
      OrganizationId = "string",
      ImpersonationRoleId = "string"
    )
