<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>managedgrafana_delete_workspace_api_key</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a Grafana API key for the workspace

### Description

Deletes a Grafana API key for the workspace.

### Usage

    managedgrafana_delete_workspace_api_key(keyName, workspaceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="managedgrafana_delete_workspace_api_key_:_keyName">keyName</code></td>
<td><p>[required] The name of the API key to delete.</p></td>
</tr>
<tr class="even">
<td><code
id="managedgrafana_delete_workspace_api_key_:_workspaceId">workspaceId</code></td>
<td><p>[required] The ID of the workspace to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      keyName = "string",
      workspaceId = "string"
    )

### Request syntax

    svc$delete_workspace_api_key(
      keyName = "string",
      workspaceId = "string"
    )
