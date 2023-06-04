<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_get_access_control_effect</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the effects of an organization's access control rules as they apply to a specified IPv4 address, access protocol action, and user ID or impersonation role ID

### Description

Gets the effects of an organization's access control rules as they apply
to a specified IPv4 address, access protocol action, and user ID or
impersonation role ID. You must provide either the user ID or
impersonation role ID. Impersonation role ID can only be used with
Action EWS.

### Usage

    workmail_get_access_control_effect(OrganizationId, IpAddress, Action,
      UserId, ImpersonationRoleId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_get_access_control_effect_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The identifier for the organization.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_get_access_control_effect_:_IpAddress">IpAddress</code></td>
<td><p>[required] The IPv4 address.</p></td>
</tr>
<tr class="odd">
<td><code
id="workmail_get_access_control_effect_:_Action">Action</code></td>
<td><p>[required] The access protocol action. Valid values include
<code>ActiveSync</code>, <code>AutoDiscover</code>, <code>EWS</code>,
<code>IMAP</code>, <code>SMTP</code>, <code>WindowsOutlook</code>, and
<code>WebMail</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_get_access_control_effect_:_UserId">UserId</code></td>
<td><p>The user ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="workmail_get_access_control_effect_:_ImpersonationRoleId">ImpersonationRoleId</code></td>
<td><p>The impersonation role ID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Effect = "ALLOW"|"DENY",
      MatchedRules = list(
        "string"
      )
    )

### Request syntax

    svc$get_access_control_effect(
      OrganizationId = "string",
      IpAddress = "string",
      Action = "string",
      UserId = "string",
      ImpersonationRoleId = "string"
    )
