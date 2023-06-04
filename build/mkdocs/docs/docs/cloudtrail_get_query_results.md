<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudtrail_get_query_results</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets event data results of a query

### Description

Gets event data results of a query. You must specify the `QueryID` value
returned by the `start_query` operation, and an ARN for
`EventDataStore`.

### Usage

    cloudtrail_get_query_results(EventDataStore, QueryId, NextToken,
      MaxQueryResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudtrail_get_query_results_:_EventDataStore">EventDataStore</code></td>
<td><p>The ARN (or ID suffix of the ARN) of the event data store against
which the query was run.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudtrail_get_query_results_:_QueryId">QueryId</code></td>
<td><p>[required] The ID of the query for which you want to get
results.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudtrail_get_query_results_:_NextToken">NextToken</code></td>
<td><p>A token you can use to get the next page of query
results.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudtrail_get_query_results_:_MaxQueryResults">MaxQueryResults</code></td>
<td><p>The maximum number of query results to display on a single
page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      QueryStatus = "QUEUED"|"RUNNING"|"FINISHED"|"FAILED"|"CANCELLED"|"TIMED_OUT",
      QueryStatistics = list(
        ResultsCount = 123,
        TotalResultsCount = 123,
        BytesScanned = 123
      ),
      QueryResultRows = list(
        list(
          list(
            "string"
          )
        )
      ),
      NextToken = "string",
      ErrorMessage = "string"
    )

### Request syntax

    svc$get_query_results(
      EventDataStore = "string",
      QueryId = "string",
      NextToken = "string",
      MaxQueryResults = 123
    )
