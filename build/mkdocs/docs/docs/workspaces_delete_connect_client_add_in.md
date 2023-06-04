<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_delete_connect_client_add_in</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a client-add-in for Amazon Connect that is configured within a directory

### Description

Deletes a client-add-in for Amazon Connect that is configured within a
directory.

### Usage

    workspaces_delete_connect_client_add_in(AddInId, ResourceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspaces_delete_connect_client_add_in_:_AddInId">AddInId</code></td>
<td><p>[required] The identifier of the client add-in to
delete.</p></td>
</tr>
<tr class="even">
<td><code
id="workspaces_delete_connect_client_add_in_:_ResourceId">ResourceId</code></td>
<td><p>[required] The directory identifier for which the client add-in
is configured.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_connect_client_add_in(
      AddInId = "string",
      ResourceId = "string"
    )
