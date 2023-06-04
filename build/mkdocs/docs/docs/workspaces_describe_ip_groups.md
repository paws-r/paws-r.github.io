<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_describe_ip_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes one or more of your IP access control groups

### Description

Describes one or more of your IP access control groups.

### Usage

    workspaces_describe_ip_groups(GroupIds, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspaces_describe_ip_groups_:_GroupIds">GroupIds</code></td>
<td><p>The identifiers of one or more IP access control groups.</p></td>
</tr>
<tr class="even">
<td><code
id="workspaces_describe_ip_groups_:_NextToken">NextToken</code></td>
<td><p>If you received a <code>NextToken</code> from a previous call
that was paginated, provide this token to receive the next set of
results.</p></td>
</tr>
<tr class="odd">
<td><code
id="workspaces_describe_ip_groups_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Result = list(
        list(
          groupId = "string",
          groupName = "string",
          groupDesc = "string",
          userRules = list(
            list(
              ipRule = "string",
              ruleDesc = "string"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_ip_groups(
      GroupIds = list(
        "string"
      ),
      NextToken = "string",
      MaxResults = 123
    )
