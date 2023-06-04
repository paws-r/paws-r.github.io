<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_get_impersonation_role</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the impersonation role details for the given WorkMail organization

### Description

Gets the impersonation role details for the given WorkMail organization.

### Usage

    workmail_get_impersonation_role(OrganizationId, ImpersonationRoleId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_get_impersonation_role_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The WorkMail organization from which to retrieve the
impersonation role.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_get_impersonation_role_:_ImpersonationRoleId">ImpersonationRoleId</code></td>
<td><p>[required] The impersonation role ID to retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
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
      ),
      DateCreated = as.POSIXct(
        "2015-01-01"
      ),
      DateModified = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$get_impersonation_role(
      OrganizationId = "string",
      ImpersonationRoleId = "string"
    )
