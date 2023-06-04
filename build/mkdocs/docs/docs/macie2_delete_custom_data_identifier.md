<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_delete_custom_data_identifier</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Soft deletes a custom data identifier

### Description

Soft deletes a custom data identifier.

### Usage

    macie2_delete_custom_data_identifier(id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="macie2_delete_custom_data_identifier_:_id">id</code></td>
<td><p>[required] The unique identifier for the Amazon Macie resource
that the request applies to.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_custom_data_identifier(
      id = "string"
    )
