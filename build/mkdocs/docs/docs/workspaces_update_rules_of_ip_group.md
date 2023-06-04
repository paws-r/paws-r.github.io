<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_update_rules_of_ip_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Replaces the current rules of the specified IP access control group with the specified rules

### Description

Replaces the current rules of the specified IP access control group with
the specified rules.

### Usage

    workspaces_update_rules_of_ip_group(GroupId, UserRules)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspaces_update_rules_of_ip_group_:_GroupId">GroupId</code></td>
<td><p>[required] The identifier of the group.</p></td>
</tr>
<tr class="even">
<td><code
id="workspaces_update_rules_of_ip_group_:_UserRules">UserRules</code></td>
<td><p>[required] One or more rules.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_rules_of_ip_group(
      GroupId = "string",
      UserRules = list(
        list(
          ipRule = "string",
          ruleDesc = "string"
        )
      )
    )
