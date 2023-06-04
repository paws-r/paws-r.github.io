<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_create_connect_client_add_in</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a client-add-in for Amazon Connect within a directory

### Description

Creates a client-add-in for Amazon Connect within a directory. You can
create only one Amazon Connect client add-in within a directory.

This client add-in allows WorkSpaces users to seamlessly connect to
Amazon Connect.

### Usage

    workspaces_create_connect_client_add_in(ResourceId, Name, URL)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspaces_create_connect_client_add_in_:_ResourceId">ResourceId</code></td>
<td><p>[required] The directory identifier for which to configure the
client add-in.</p></td>
</tr>
<tr class="even">
<td><code
id="workspaces_create_connect_client_add_in_:_Name">Name</code></td>
<td><p>[required] The name of the client add-in.</p></td>
</tr>
<tr class="odd">
<td><code
id="workspaces_create_connect_client_add_in_:_URL">URL</code></td>
<td><p>[required] The endpoint URL of the Amazon Connect client
add-in.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AddInId = "string"
    )

### Request syntax

    svc$create_connect_client_add_in(
      ResourceId = "string",
      Name = "string",
      URL = "string"
    )
