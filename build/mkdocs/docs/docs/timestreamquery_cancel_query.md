<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>timestreamquery_cancel_query</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Cancels a query that has been issued

### Description

Cancels a query that has been issued. Cancellation is provided only if
the query has not completed running before the cancellation request was
issued. Because cancellation is an idempotent operation, subsequent
cancellation requests will return a `CancellationMessage`, indicating
that the query has already been canceled. See [code
sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.cancel-query.html)
for details.

### Usage

    timestreamquery_cancel_query(QueryId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="timestreamquery_cancel_query_:_QueryId">QueryId</code></td>
<td><p>[required] The ID of the query that needs to be cancelled.
<code>QueryID</code> is returned as part of the query result.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CancellationMessage = "string"
    )

### Request syntax

    svc$cancel_query(
      QueryId = "string"
    )
