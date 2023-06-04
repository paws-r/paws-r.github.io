<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>prometheusservice_update_workspace_alias</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an AMP workspace alias

### Description

Updates an AMP workspace alias.

### Usage

    prometheusservice_update_workspace_alias(alias, clientToken,
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
id="prometheusservice_update_workspace_alias_:_alias">alias</code></td>
<td><p>The new alias of the workspace.</p></td>
</tr>
<tr class="even">
<td><code
id="prometheusservice_update_workspace_alias_:_clientToken">clientToken</code></td>
<td><p>Optional, unique, case-sensitive, user-provided identifier to
ensure the idempotency of the request.</p></td>
</tr>
<tr class="odd">
<td><code
id="prometheusservice_update_workspace_alias_:_workspaceId">workspaceId</code></td>
<td><p>[required] The ID of the workspace being updated.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_workspace_alias(
      alias = "string",
      clientToken = "string",
      workspaceId = "string"
    )
