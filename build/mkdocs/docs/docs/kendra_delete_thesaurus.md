<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra_delete_thesaurus</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an existing Amazon Kendra thesaurus

### Description

Deletes an existing Amazon Kendra thesaurus.

### Usage

    kendra_delete_thesaurus(Id, IndexId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kendra_delete_thesaurus_:_Id">Id</code></td>
<td><p>[required] The identifier of the thesaurus you want to
delete.</p></td>
</tr>
<tr class="even">
<td><code id="kendra_delete_thesaurus_:_IndexId">IndexId</code></td>
<td><p>[required] The identifier of the index for the
thesaurus.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_thesaurus(
      Id = "string",
      IndexId = "string"
    )
