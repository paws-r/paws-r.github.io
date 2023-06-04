<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchlogs_stop_query</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops a CloudWatch Logs Insights query that is in progress

### Description

Stops a CloudWatch Logs Insights query that is in progress. If the query
has already ended, the operation returns an error indicating that the
specified query is not running.

### Usage

    cloudwatchlogs_stop_query(queryId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudwatchlogs_stop_query_:_queryId">queryId</code></td>
<td><p>[required] The ID number of the query to stop. To find this ID
number, use <code>describe_queries</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      success = TRUE|FALSE
    )

### Request syntax

    svc$stop_query(
      queryId = "string"
    )
