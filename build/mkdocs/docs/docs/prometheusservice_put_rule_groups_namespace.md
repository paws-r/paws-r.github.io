<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>prometheusservice_put_rule_groups_namespace</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Update a rule groups namespace

### Description

Update a rule groups namespace.

### Usage

    prometheusservice_put_rule_groups_namespace(clientToken, data, name,
      workspaceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="prometheusservice_put_rule_groups_namespace_:_clientToken">clientToken</code></td>
<td><p>Optional, unique, case-sensitive, user-provided identifier to
ensure the idempotency of the request.</p></td>
</tr>
<tr class="even">
<td><code
id="prometheusservice_put_rule_groups_namespace_:_data">data</code></td>
<td><p>[required] The namespace data that define the rule
groups.</p></td>
</tr>
<tr class="odd">
<td><code
id="prometheusservice_put_rule_groups_namespace_:_name">name</code></td>
<td><p>[required] The rule groups namespace name.</p></td>
</tr>
<tr class="even">
<td><code
id="prometheusservice_put_rule_groups_namespace_:_workspaceId">workspaceId</code></td>
<td><p>[required] The ID of the workspace in which to update the rule
group namespace.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      arn = "string",
      name = "string",
      status = list(
        statusCode = "CREATING"|"ACTIVE"|"UPDATING"|"DELETING"|"CREATION_FAILED"|"UPDATE_FAILED",
        statusReason = "string"
      ),
      tags = list(
        "string"
      )
    )

### Request syntax

    svc$put_rule_groups_namespace(
      clientToken = "string",
      data = raw,
      name = "string",
      workspaceId = "string"
    )
