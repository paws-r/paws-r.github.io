<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fms_delete_apps_list</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Permanently deletes an Firewall Manager applications list

### Description

Permanently deletes an Firewall Manager applications list.

### Usage

    fms_delete_apps_list(ListId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="fms_delete_apps_list_:_ListId">ListId</code></td>
<td><p>[required] The ID of the applications list that you want to
delete. You can retrieve this ID from <code>put_apps_list</code>,
<code>list_apps_lists</code>, and <code>get_apps_list</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_apps_list(
      ListId = "string"
    )
