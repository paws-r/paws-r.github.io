<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>timestreamquery_list_scheduled_queries</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of all scheduled queries in the caller's Amazon account and Region

### Description

Gets a list of all scheduled queries in the caller's Amazon account and
Region. `list_scheduled_queries` is eventually consistent.

### Usage

    timestreamquery_list_scheduled_queries(MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="timestreamquery_list_scheduled_queries_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return in the output. If the total
number of items available is more than the value specified, a
<code>NextToken</code> is provided in the output. To resume pagination,
provide the <code>NextToken</code> value as the argument to the
subsequent call to <code>ListScheduledQueriesRequest</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="timestreamquery_list_scheduled_queries_:_NextToken">NextToken</code></td>
<td><p>A pagination token to resume pagination.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ScheduledQueries = list(
        list(
          Arn = "string",
          Name = "string",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          State = "ENABLED"|"DISABLED",
          PreviousInvocationTime = as.POSIXct(
            "2015-01-01"
          ),
          NextInvocationTime = as.POSIXct(
            "2015-01-01"
          ),
          ErrorReportConfiguration = list(
            S3Configuration = list(
              BucketName = "string",
              ObjectKeyPrefix = "string",
              EncryptionOption = "SSE_S3"|"SSE_KMS"
            )
          ),
          TargetDestination = list(
            TimestreamDestination = list(
              DatabaseName = "string",
              TableName = "string"
            )
          ),
          LastRunStatus = "AUTO_TRIGGER_SUCCESS"|"AUTO_TRIGGER_FAILURE"|"MANUAL_TRIGGER_SUCCESS"|"MANUAL_TRIGGER_FAILURE"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_scheduled_queries(
      MaxResults = 123,
      NextToken = "string"
    )
