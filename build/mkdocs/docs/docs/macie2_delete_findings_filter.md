<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_delete_findings_filter</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a findings filter

### Description

Deletes a findings filter.

### Usage

    macie2_delete_findings_filter(id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="macie2_delete_findings_filter_:_id">id</code></td>
<td><p>[required] The unique identifier for the Amazon Macie resource
that the request applies to.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_findings_filter(
      id = "string"
    )
