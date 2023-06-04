<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudtrail_cancel_query</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Cancels a query if the query is not in a terminated state, such as CANCELLED, FAILED, TIMED\_OUT, or FINISHED

### Description

Cancels a query if the query is not in a terminated state, such as
`CANCELLED`, `FAILED`, `TIMED_OUT`, or `FINISHED`. You must specify an
ARN value for `EventDataStore`. The ID of the query that you want to
cancel is also required. When you run `cancel_query`, the query status
might show as `CANCELLED` even if the operation is not yet finished.

### Usage

    cloudtrail_cancel_query(EventDataStore, QueryId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudtrail_cancel_query_:_EventDataStore">EventDataStore</code></td>
<td><p>The ARN (or the ID suffix of the ARN) of an event data store on
which the specified query is running.</p></td>
</tr>
<tr class="even">
<td><code id="cloudtrail_cancel_query_:_QueryId">QueryId</code></td>
<td><p>[required] The ID of the query that you want to cancel. The
<code>QueryId</code> comes from the response of a
<code>start_query</code> operation.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      QueryId = "string",
      QueryStatus = "QUEUED"|"RUNNING"|"FINISHED"|"FAILED"|"CANCELLED"|"TIMED_OUT"
    )

### Request syntax

    svc$cancel_query(
      EventDataStore = "string",
      QueryId = "string"
    )
