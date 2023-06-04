<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_update_connect_client_add_in</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a Amazon Connect client add-in

### Description

Updates a Amazon Connect client add-in. Use this action to update the
name and endpoint URL of a Amazon Connect client add-in.

### Usage

    workspaces_update_connect_client_add_in(AddInId, ResourceId, Name, URL)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspaces_update_connect_client_add_in_:_AddInId">AddInId</code></td>
<td><p>[required] The identifier of the client add-in to
update.</p></td>
</tr>
<tr class="even">
<td><code
id="workspaces_update_connect_client_add_in_:_ResourceId">ResourceId</code></td>
<td><p>[required] The directory identifier for which the client add-in
is configured.</p></td>
</tr>
<tr class="odd">
<td><code
id="workspaces_update_connect_client_add_in_:_Name">Name</code></td>
<td><p>The name of the client add-in.</p></td>
</tr>
<tr class="even">
<td><code
id="workspaces_update_connect_client_add_in_:_URL">URL</code></td>
<td><p>The endpoint URL of the Amazon Connect client add-in.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_connect_client_add_in(
      AddInId = "string",
      ResourceId = "string",
      Name = "string",
      URL = "string"
    )
