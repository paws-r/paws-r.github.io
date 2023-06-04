<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>timestreamquery_update_scheduled_query</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Update a scheduled query

### Description

Update a scheduled query.

### Usage

    timestreamquery_update_scheduled_query(ScheduledQueryArn, State)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="timestreamquery_update_scheduled_query_:_ScheduledQueryArn">ScheduledQueryArn</code></td>
<td><p>[required] ARN of the scheuled query.</p></td>
</tr>
<tr class="even">
<td><code
id="timestreamquery_update_scheduled_query_:_State">State</code></td>
<td><p>[required] State of the scheduled query.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_scheduled_query(
      ScheduledQueryArn = "string",
      State = "ENABLED"|"DISABLED"
    )
