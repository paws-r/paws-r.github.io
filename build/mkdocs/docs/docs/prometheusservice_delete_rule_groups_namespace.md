<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>prometheusservice_delete_rule_groups_namespace</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Delete a rule groups namespace

### Description

Delete a rule groups namespace.

### Usage

    prometheusservice_delete_rule_groups_namespace(clientToken, name,
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
id="prometheusservice_delete_rule_groups_namespace_:_clientToken">clientToken</code></td>
<td><p>Optional, unique, case-sensitive, user-provided identifier to
ensure the idempotency of the request.</p></td>
</tr>
<tr class="even">
<td><code
id="prometheusservice_delete_rule_groups_namespace_:_name">name</code></td>
<td><p>[required] The rule groups namespace name.</p></td>
</tr>
<tr class="odd">
<td><code
id="prometheusservice_delete_rule_groups_namespace_:_workspaceId">workspaceId</code></td>
<td><p>[required] The ID of the workspace to delete rule group
definition.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_rule_groups_namespace(
      clientToken = "string",
      name = "string",
      workspaceId = "string"
    )
