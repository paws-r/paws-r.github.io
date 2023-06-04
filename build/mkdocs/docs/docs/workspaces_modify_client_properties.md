<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_modify_client_properties</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the properties of the specified Amazon WorkSpaces clients

### Description

Modifies the properties of the specified Amazon WorkSpaces clients.

### Usage

    workspaces_modify_client_properties(ResourceId, ClientProperties)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspaces_modify_client_properties_:_ResourceId">ResourceId</code></td>
<td><p>[required] The resource identifiers, in the form of directory
IDs.</p></td>
</tr>
<tr class="even">
<td><code
id="workspaces_modify_client_properties_:_ClientProperties">ClientProperties</code></td>
<td><p>[required] Information about the Amazon WorkSpaces
client.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$modify_client_properties(
      ResourceId = "string",
      ClientProperties = list(
        ReconnectEnabled = "ENABLED"|"DISABLED",
        LogUploadEnabled = "ENABLED"|"DISABLED"
      )
    )
