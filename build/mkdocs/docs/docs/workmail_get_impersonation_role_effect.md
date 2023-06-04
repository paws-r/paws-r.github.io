<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_get_impersonation_role_effect</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Tests whether the given impersonation role can impersonate a target user

### Description

Tests whether the given impersonation role can impersonate a target
user.

### Usage

    workmail_get_impersonation_role_effect(OrganizationId,
      ImpersonationRoleId, TargetUser)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_get_impersonation_role_effect_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The WorkMail organization where the impersonation role
is defined.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_get_impersonation_role_effect_:_ImpersonationRoleId">ImpersonationRoleId</code></td>
<td><p>[required] The impersonation role ID to test.</p></td>
</tr>
<tr class="odd">
<td><code
id="workmail_get_impersonation_role_effect_:_TargetUser">TargetUser</code></td>
<td><p>[required] The WorkMail organization user chosen to test the
impersonation role. The following identity formats are available:</p>
<ul>
<li><p>User ID: <code>12345678-1234-1234-1234-123456789012</code> or
<code>S-1-1-12-1234567890-123456789-123456789-1234</code></p></li>
<li><p>Email address: <code>user@domain.tld</code></p></li>
<li><p>User name: <code>user</code></p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Type = "FULL_ACCESS"|"READ_ONLY",
      Effect = "ALLOW"|"DENY",
      MatchedRules = list(
        list(
          ImpersonationRuleId = "string",
          Name = "string"
        )
      )
    )

### Request syntax

    svc$get_impersonation_role_effect(
      OrganizationId = "string",
      ImpersonationRoleId = "string",
      TargetUser = "string"
    )
