<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_authorize_ip_rules</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds one or more rules to the specified IP access control group

### Description

Adds one or more rules to the specified IP access control group.

This action gives users permission to access their WorkSpaces from the
CIDR address ranges specified in the rules.

### Usage

    workspaces_authorize_ip_rules(GroupId, UserRules)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspaces_authorize_ip_rules_:_GroupId">GroupId</code></td>
<td><p>[required] The identifier of the group.</p></td>
</tr>
<tr class="even">
<td><code
id="workspaces_authorize_ip_rules_:_UserRules">UserRules</code></td>
<td><p>[required] The rules to add to the group.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$authorize_ip_rules(
      GroupId = "string",
      UserRules = list(
        list(
          ipRule = "string",
          ruleDesc = "string"
        )
      )
    )
