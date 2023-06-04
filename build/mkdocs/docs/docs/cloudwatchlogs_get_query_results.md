<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchlogs_get_query_results</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the results from the specified query

### Description

Returns the results from the specified query.

Only the fields requested in the query are returned, along with a `⁠@ptr⁠`
field, which is the identifier for the log record. You can use the value
of `⁠@ptr⁠` in a `get_log_record` operation to get the full log record.

`get_query_results` does not start running a query. To run a query, use
`start_query`.

If the value of the `Status` field in the output is `Running`, this
operation returns only partial results. If you see a value of
`Scheduled` or `Running` for the status, you can retry the operation
later to see the final results.

If you are using CloudWatch cross-account observability, you can use
this operation in a monitoring account to start queries in linked source
accounts. For more information, see [CloudWatch cross-account
observability](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html).

### Usage

    cloudwatchlogs_get_query_results(queryId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchlogs_get_query_results_:_queryId">queryId</code></td>
<td><p>[required] The ID number of the query.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      results = list(
        list(
          list(
            field = "string",
            value = "string"
          )
        )
      ),
      statistics = list(
        recordsMatched = 123.0,
        recordsScanned = 123.0,
        bytesScanned = 123.0
      ),
      status = "Scheduled"|"Running"|"Complete"|"Failed"|"Cancelled"|"Timeout"|"Unknown"
    )

### Request syntax

    svc$get_query_results(
      queryId = "string"
    )
