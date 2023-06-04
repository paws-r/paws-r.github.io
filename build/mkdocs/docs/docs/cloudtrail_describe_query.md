<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudtrail_describe_query</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns metadata about a query, including query run time in milliseconds, number of events scanned and matched, and query status

### Description

Returns metadata about a query, including query run time in
milliseconds, number of events scanned and matched, and query status.
You must specify an ARN for `EventDataStore`, and a value for `QueryID`.

### Usage

    cloudtrail_describe_query(EventDataStore, QueryId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudtrail_describe_query_:_EventDataStore">EventDataStore</code></td>
<td><p>The ARN (or the ID suffix of the ARN) of an event data store on
which the specified query was run.</p></td>
</tr>
<tr class="even">
<td><code id="cloudtrail_describe_query_:_QueryId">QueryId</code></td>
<td><p>[required] The query ID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      QueryId = "string",
      QueryString = "string",
      QueryStatus = "QUEUED"|"RUNNING"|"FINISHED"|"FAILED"|"CANCELLED"|"TIMED_OUT",
      QueryStatistics = list(
        EventsMatched = 123,
        EventsScanned = 123,
        BytesScanned = 123,
        ExecutionTimeInMillis = 123,
        CreationTime = as.POSIXct(
          "2015-01-01"
        )
      ),
      ErrorMessage = "string",
      DeliveryS3Uri = "string",
      DeliveryStatus = "SUCCESS"|"FAILED"|"FAILED_SIGNING_FILE"|"PENDING"|"RESOURCE_NOT_FOUND"|"ACCESS_DENIED"|"ACCESS_DENIED_SIGNING_FILE"|"CANCELLED"|"UNKNOWN"
    )

### Request syntax

    svc$describe_query(
      EventDataStore = "string",
      QueryId = "string"
    )
