<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_delete_key_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a key group

### Description

Deletes a key group.

You cannot delete a key group that is referenced in a cache behavior.
First update your distributions to remove the key group from all cache
behaviors, then delete the key group.

To delete a key group, you must provide the key group's identifier and
version. To get these values, use `list_key_groups` followed by
`get_key_group` or `get_key_group_config`.

### Usage

    cloudfront_delete_key_group(Id, IfMatch)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudfront_delete_key_group_:_Id">Id</code></td>
<td><p>[required] The identifier of the key group that you are deleting.
To get the identifier, use <code>list_key_groups</code>.</p></td>
</tr>
<tr class="even">
<td><code id="cloudfront_delete_key_group_:_IfMatch">IfMatch</code></td>
<td><p>The version of the key group that you are deleting. The version
is the key group's <code>ETag</code> value. To get the
<code>ETag</code>, use <code>get_key_group</code> or
<code>get_key_group_config</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_key_group(
      Id = "string",
      IfMatch = "string"
    )
