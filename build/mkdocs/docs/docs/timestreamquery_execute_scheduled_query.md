<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>timestreamquery_execute_scheduled_query</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## You can use this API to run a scheduled query manually

### Description

You can use this API to run a scheduled query manually.

### Usage

    timestreamquery_execute_scheduled_query(ScheduledQueryArn,
      InvocationTime, ClientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="timestreamquery_execute_scheduled_query_:_ScheduledQueryArn">ScheduledQueryArn</code></td>
<td><p>[required] ARN of the scheduled query.</p></td>
</tr>
<tr class="even">
<td><code
id="timestreamquery_execute_scheduled_query_:_InvocationTime">InvocationTime</code></td>
<td><p>[required] The timestamp in UTC. Query will be run as if it was
invoked at this timestamp.</p></td>
</tr>
<tr class="odd">
<td><code
id="timestreamquery_execute_scheduled_query_:_ClientToken">ClientToken</code></td>
<td><p>Not used.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$execute_scheduled_query(
      ScheduledQueryArn = "string",
      InvocationTime = as.POSIXct(
        "2015-01-01"
      ),
      ClientToken = "string"
    )
