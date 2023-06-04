<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_update_impersonation_role</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an impersonation role for the given WorkMail organization

### Description

Updates an impersonation role for the given WorkMail organization.

### Usage

    workmail_update_impersonation_role(OrganizationId, ImpersonationRoleId,
      Name, Type, Description, Rules)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_update_impersonation_role_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The WorkMail organization that contains the
impersonation role to update.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_update_impersonation_role_:_ImpersonationRoleId">ImpersonationRoleId</code></td>
<td><p>[required] The ID of the impersonation role to update.</p></td>
</tr>
<tr class="odd">
<td><code
id="workmail_update_impersonation_role_:_Name">Name</code></td>
<td><p>[required] The updated impersonation role name.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_update_impersonation_role_:_Type">Type</code></td>
<td><p>[required] The updated impersonation role type.</p></td>
</tr>
<tr class="odd">
<td><code
id="workmail_update_impersonation_role_:_Description">Description</code></td>
<td><p>The updated impersonation role description.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_update_impersonation_role_:_Rules">Rules</code></td>
<td><p>[required] The updated list of rules.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_impersonation_role(
      OrganizationId = "string",
      ImpersonationRoleId = "string",
      Name = "string",
      Type = "FULL_ACCESS"|"READ_ONLY",
      Description = "string",
      Rules = list(
        list(
          ImpersonationRuleId = "string",
          Name = "string",
          Description = "string",
          Effect = "ALLOW"|"DENY",
          TargetUsers = list(
            "string"
          ),
          NotTargetUsers = list(
            "string"
          )
        )
      )
    )
