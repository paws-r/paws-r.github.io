<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>prometheusservice_list_rule_groups_namespaces</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists rule groups namespaces

### Description

Lists rule groups namespaces.

### Usage

    prometheusservice_list_rule_groups_namespaces(maxResults, name,
      nextToken, workspaceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="prometheusservice_list_rule_groups_namespaces_:_maxResults">maxResults</code></td>
<td><p>Maximum results to return in response (default=100,
maximum=1000).</p></td>
</tr>
<tr class="even">
<td><code
id="prometheusservice_list_rule_groups_namespaces_:_name">name</code></td>
<td><p>Optional filter for rule groups namespace name. Only the rule
groups namespace that begin with this value will be returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="prometheusservice_list_rule_groups_namespaces_:_nextToken">nextToken</code></td>
<td><p>Pagination token to request the next page in a paginated list.
This token is obtained from the output of the previous
ListRuleGroupsNamespaces request.</p></td>
</tr>
<tr class="even">
<td><code
id="prometheusservice_list_rule_groups_namespaces_:_workspaceId">workspaceId</code></td>
<td><p>[required] The ID of the workspace.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      ruleGroupsNamespaces = list(
        list(
          arn = "string",
          createdAt = as.POSIXct(
            "2015-01-01"
          ),
          modifiedAt = as.POSIXct(
            "2015-01-01"
          ),
          name = "string",
          status = list(
            statusCode = "CREATING"|"ACTIVE"|"UPDATING"|"DELETING"|"CREATION_FAILED"|"UPDATE_FAILED",
            statusReason = "string"
          ),
          tags = list(
            "string"
          )
        )
      )
    )

### Request syntax

    svc$list_rule_groups_namespaces(
      maxResults = 123,
      name = "string",
      nextToken = "string",
      workspaceId = "string"
    )
