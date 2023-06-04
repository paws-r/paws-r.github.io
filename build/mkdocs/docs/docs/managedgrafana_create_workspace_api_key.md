<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>managedgrafana_create_workspace_api_key</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a Grafana API key for the workspace

### Description

Creates a Grafana API key for the workspace. This key can be used to
authenticate requests sent to the workspace's HTTP API. See
<https://docs.aws.amazon.com/grafana/latest/userguide/Using-Grafana-APIs.html>
for available APIs and example requests.

### Usage

    managedgrafana_create_workspace_api_key(keyName, keyRole, secondsToLive,
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
id="managedgrafana_create_workspace_api_key_:_keyName">keyName</code></td>
<td><p>[required] Specifies the name of the key. Keynames must be unique
to the workspace.</p></td>
</tr>
<tr class="even">
<td><code
id="managedgrafana_create_workspace_api_key_:_keyRole">keyRole</code></td>
<td><p>[required] Specifies the permission level of the key.</p>
<p>Valid values:
<code>VIEWER</code>|<code>EDITOR</code>|<code>ADMIN</code></p></td>
</tr>
<tr class="odd">
<td><code
id="managedgrafana_create_workspace_api_key_:_secondsToLive">secondsToLive</code></td>
<td><p>[required] Specifies the time in seconds until the key expires.
Keys can be valid for up to 30 days.</p></td>
</tr>
<tr class="even">
<td><code
id="managedgrafana_create_workspace_api_key_:_workspaceId">workspaceId</code></td>
<td><p>[required] The ID of the workspace to create an API key.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      key = "string",
      keyName = "string",
      workspaceId = "string"
    )

### Request syntax

    svc$create_workspace_api_key(
      keyName = "string",
      keyRole = "string",
      secondsToLive = 123,
      workspaceId = "string"
    )
