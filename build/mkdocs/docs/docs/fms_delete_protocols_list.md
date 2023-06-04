<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fms_delete_protocols_list</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Permanently deletes an Firewall Manager protocols list

### Description

Permanently deletes an Firewall Manager protocols list.

### Usage

    fms_delete_protocols_list(ListId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="fms_delete_protocols_list_:_ListId">ListId</code></td>
<td><p>[required] The ID of the protocols list that you want to delete.
You can retrieve this ID from <code>put_protocols_list</code>,
<code>list_protocols_lists</code>, and
<code>GetProtocolsLost</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_protocols_list(
      ListId = "string"
    )
