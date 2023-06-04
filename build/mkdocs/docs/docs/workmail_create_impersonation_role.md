<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_create_impersonation_role</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an impersonation role for the given WorkMail organization

### Description

Creates an impersonation role for the given WorkMail organization.

*Idempotency* ensures that an API request completes no more than one
time. With an idempotent request, if the original request completes
successfully, any subsequent retries also complete successfully without
performing any further actions.

### Usage

    workmail_create_impersonation_role(ClientToken, OrganizationId, Name,
      Type, Description, Rules)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_create_impersonation_role_:_ClientToken">ClientToken</code></td>
<td><p>The idempotency token for the client request.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_create_impersonation_role_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The WorkMail organization to create the new
impersonation role within.</p></td>
</tr>
<tr class="odd">
<td><code
id="workmail_create_impersonation_role_:_Name">Name</code></td>
<td><p>[required] The name of the new impersonation role.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_create_impersonation_role_:_Type">Type</code></td>
<td><p>[required] The impersonation role's type. The available
impersonation role types are <code>READ_ONLY</code> or
<code>FULL_ACCESS</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="workmail_create_impersonation_role_:_Description">Description</code></td>
<td><p>The description of the new impersonation role.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_create_impersonation_role_:_Rules">Rules</code></td>
<td><p>[required] The list of rules for the impersonation role.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ImpersonationRoleId = "string"
    )

### Request syntax

    svc$create_impersonation_role(
      ClientToken = "string",
      OrganizationId = "string",
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
