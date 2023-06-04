<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>prometheusservice_delete_workspace</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an AMP workspace

### Description

Deletes an AMP workspace.

### Usage

    prometheusservice_delete_workspace(clientToken, workspaceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="prometheusservice_delete_workspace_:_clientToken">clientToken</code></td>
<td><p>Optional, unique, case-sensitive, user-provided identifier to
ensure the idempotency of the request.</p></td>
</tr>
<tr class="even">
<td><code
id="prometheusservice_delete_workspace_:_workspaceId">workspaceId</code></td>
<td><p>[required] The ID of the workspace to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_workspace(
      clientToken = "string",
      workspaceId = "string"
    )
