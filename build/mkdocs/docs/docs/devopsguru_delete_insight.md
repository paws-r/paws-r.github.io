<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>devopsguru_delete_insight</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the insight along with the associated anomalies, events and recommendations

### Description

Deletes the insight along with the associated anomalies, events and
recommendations.

### Usage

    devopsguru_delete_insight(Id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="devopsguru_delete_insight_:_Id">Id</code></td>
<td><p>[required] The ID of the insight.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_insight(
      Id = "string"
    )
