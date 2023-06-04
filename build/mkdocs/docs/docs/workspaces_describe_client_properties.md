<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_describe_client_properties</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list that describes one or more specified Amazon WorkSpaces clients

### Description

Retrieves a list that describes one or more specified Amazon WorkSpaces
clients.

### Usage

    workspaces_describe_client_properties(ResourceIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspaces_describe_client_properties_:_ResourceIds">ResourceIds</code></td>
<td><p>[required] The resource identifier, in the form of directory
IDs.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ClientPropertiesList = list(
        list(
          ResourceId = "string",
          ClientProperties = list(
            ReconnectEnabled = "ENABLED"|"DISABLED",
            LogUploadEnabled = "ENABLED"|"DISABLED"
          )
        )
      )
    )

### Request syntax

    svc$describe_client_properties(
      ResourceIds = list(
        "string"
      )
    )
