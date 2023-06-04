<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra_delete_faq</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes an FAQ from an index

### Description

Removes an FAQ from an index.

### Usage

    kendra_delete_faq(Id, IndexId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kendra_delete_faq_:_Id">Id</code></td>
<td><p>[required] The identifier of the FAQ you want to remove.</p></td>
</tr>
<tr class="even">
<td><code id="kendra_delete_faq_:_IndexId">IndexId</code></td>
<td><p>[required] The identifier of the index for the FAQ.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_faq(
      Id = "string",
      IndexId = "string"
    )
