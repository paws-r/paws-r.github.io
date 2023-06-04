<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>prometheusservice_describe_rule_groups_namespace</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describe a rule groups namespace

### Description

Describe a rule groups namespace.

### Usage

    prometheusservice_describe_rule_groups_namespace(name, workspaceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="prometheusservice_describe_rule_groups_namespace_:_name">name</code></td>
<td><p>[required] The rule groups namespace.</p></td>
</tr>
<tr class="even">
<td><code
id="prometheusservice_describe_rule_groups_namespace_:_workspaceId">workspaceId</code></td>
<td><p>[required] The ID of the workspace to describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ruleGroupsNamespace = list(
        arn = "string",
        createdAt = as.POSIXct(
          "2015-01-01"
        ),
        data = raw,
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

### Request syntax

    svc$describe_rule_groups_namespace(
      name = "string",
      workspaceId = "string"
    )
