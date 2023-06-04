<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_revoke_ip_rules</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes one or more rules from the specified IP access control group

### Description

Removes one or more rules from the specified IP access control group.

### Usage

    workspaces_revoke_ip_rules(GroupId, UserRules)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="workspaces_revoke_ip_rules_:_GroupId">GroupId</code></td>
<td><p>[required] The identifier of the group.</p></td>
</tr>
<tr class="even">
<td><code
id="workspaces_revoke_ip_rules_:_UserRules">UserRules</code></td>
<td><p>[required] The rules to remove from the group.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$revoke_ip_rules(
      GroupId = "string",
      UserRules = list(
        "string"
      )
    )
