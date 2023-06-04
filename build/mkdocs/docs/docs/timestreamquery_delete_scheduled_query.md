<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>timestreamquery_delete_scheduled_query</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a given scheduled query

### Description

Deletes a given scheduled query. This is an irreversible operation.

### Usage

    timestreamquery_delete_scheduled_query(ScheduledQueryArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="timestreamquery_delete_scheduled_query_:_ScheduledQueryArn">ScheduledQueryArn</code></td>
<td><p>[required] The ARN of the scheduled query.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_scheduled_query(
      ScheduledQueryArn = "string"
    )
