<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_put_access_control_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds a new access control rule for the specified organization

### Description

Adds a new access control rule for the specified organization. The rule
allows or denies access to the organization for the specified IPv4
addresses, access protocol actions, user IDs and impersonation IDs.
Adding a new rule with the same name as an existing rule replaces the
older rule.

### Usage

    workmail_put_access_control_rule(Name, Effect, Description, IpRanges,
      NotIpRanges, Actions, NotActions, UserIds, NotUserIds, OrganizationId,
      ImpersonationRoleIds, NotImpersonationRoleIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="workmail_put_access_control_rule_:_Name">Name</code></td>
<td><p>[required] The rule name.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_put_access_control_rule_:_Effect">Effect</code></td>
<td><p>[required] The rule effect.</p></td>
</tr>
<tr class="odd">
<td><code
id="workmail_put_access_control_rule_:_Description">Description</code></td>
<td><p>[required] The rule description.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_put_access_control_rule_:_IpRanges">IpRanges</code></td>
<td><p>IPv4 CIDR ranges to include in the rule.</p></td>
</tr>
<tr class="odd">
<td><code
id="workmail_put_access_control_rule_:_NotIpRanges">NotIpRanges</code></td>
<td><p>IPv4 CIDR ranges to exclude from the rule.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_put_access_control_rule_:_Actions">Actions</code></td>
<td><p>Access protocol actions to include in the rule. Valid values
include <code>ActiveSync</code>, <code>AutoDiscover</code>,
<code>EWS</code>, <code>IMAP</code>, <code>SMTP</code>,
<code>WindowsOutlook</code>, and <code>WebMail</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="workmail_put_access_control_rule_:_NotActions">NotActions</code></td>
<td><p>Access protocol actions to exclude from the rule. Valid values
include <code>ActiveSync</code>, <code>AutoDiscover</code>,
<code>EWS</code>, <code>IMAP</code>, <code>SMTP</code>,
<code>WindowsOutlook</code>, and <code>WebMail</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_put_access_control_rule_:_UserIds">UserIds</code></td>
<td><p>User IDs to include in the rule.</p></td>
</tr>
<tr class="odd">
<td><code
id="workmail_put_access_control_rule_:_NotUserIds">NotUserIds</code></td>
<td><p>User IDs to exclude from the rule.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_put_access_control_rule_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The identifier of the organization.</p></td>
</tr>
<tr class="odd">
<td><code
id="workmail_put_access_control_rule_:_ImpersonationRoleIds">ImpersonationRoleIds</code></td>
<td><p>Impersonation role IDs to include in the rule.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_put_access_control_rule_:_NotImpersonationRoleIds">NotImpersonationRoleIds</code></td>
<td><p>Impersonation role IDs to exclude from the rule.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_access_control_rule(
      Name = "string",
      Effect = "ALLOW"|"DENY",
      Description = "string",
      IpRanges = list(
        "string"
      ),
      NotIpRanges = list(
        "string"
      ),
      Actions = list(
        "string"
      ),
      NotActions = list(
        "string"
      ),
      UserIds = list(
        "string"
      ),
      NotUserIds = list(
        "string"
      ),
      OrganizationId = "string",
      ImpersonationRoleIds = list(
        "string"
      ),
      NotImpersonationRoleIds = list(
        "string"
      )
    )
