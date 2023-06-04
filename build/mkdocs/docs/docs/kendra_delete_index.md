<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra_delete_index</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an existing Amazon Kendra index

### Description

Deletes an existing Amazon Kendra index. An exception is not thrown if
the index is already being deleted. While the index is being deleted,
the `Status` field returned by a call to the `describe_index` API is set
to `DELETING`.

### Usage

    kendra_delete_index(Id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kendra_delete_index_:_Id">Id</code></td>
<td><p>[required] The identifier of the index you want to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_index(
      Id = "string"
    )
