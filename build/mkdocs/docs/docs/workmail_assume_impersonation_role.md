<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_assume_impersonation_role</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Assumes an impersonation role for the given WorkMail organization

### Description

Assumes an impersonation role for the given WorkMail organization. This
method returns an authentication token you can use to make impersonated
calls.

### Usage

    workmail_assume_impersonation_role(OrganizationId, ImpersonationRoleId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_assume_impersonation_role_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The WorkMail organization under which the
impersonation role will be assumed.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_assume_impersonation_role_:_ImpersonationRoleId">ImpersonationRoleId</code></td>
<td><p>[required] The impersonation role ID to assume.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Token = "string",
      ExpiresIn = 123
    )

### Request syntax

    svc$assume_impersonation_role(
      OrganizationId = "string",
      ImpersonationRoleId = "string"
    )
