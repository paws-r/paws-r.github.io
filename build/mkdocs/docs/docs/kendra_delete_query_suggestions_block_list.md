<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra_delete_query_suggestions_block_list</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a block list used for query suggestions for an index

### Description

Deletes a block list used for query suggestions for an index.

A deleted block list might not take effect right away. Amazon Kendra
needs to refresh the entire suggestions list to add back the queries
that were previously blocked.

`delete_query_suggestions_block_list` is currently not supported in the
Amazon Web Services GovCloud (US-West) region.

### Usage

    kendra_delete_query_suggestions_block_list(IndexId, Id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kendra_delete_query_suggestions_block_list_:_IndexId">IndexId</code></td>
<td><p>[required] The identifier of the index for the block
list.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_delete_query_suggestions_block_list_:_Id">Id</code></td>
<td><p>[required] The identifier of the block list you want to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_query_suggestions_block_list(
      IndexId = "string",
      Id = "string"
    )
