<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appstream_delete_app_block</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an app block

### Description

Deletes an app block.

### Usage

    appstream_delete_app_block(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="appstream_delete_app_block_:_Name">Name</code></td>
<td><p>[required] The name of the app block.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_app_block(
      Name = "string"
    )
