<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dynamodb_update_time_to_live</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The UpdateTimeToLive method enables or disables Time to Live (TTL) for the specified table

### Description

The `update_time_to_live` method enables or disables Time to Live (TTL)
for the specified table. A successful `update_time_to_live` call returns
the current `TimeToLiveSpecification`. It can take up to one hour for
the change to fully process. Any additional `update_time_to_live` calls
for the same table during this one hour duration result in a
`ValidationException`.

TTL compares the current time in epoch time format to the time stored in
the TTL attribute of an item. If the epoch time value stored in the
attribute is less than the current time, the item is marked as expired
and subsequently deleted.

The epoch time format is the number of seconds elapsed since 12:00:00 AM
January 1, 1970 UTC.

DynamoDB deletes expired items on a best-effort basis to ensure
availability of throughput for other data operations.

DynamoDB typically deletes expired items within two days of expiration.
The exact duration within which an item gets deleted after expiration is
specific to the nature of the workload. Items that have expired and not
been deleted will still show up in reads, queries, and scans.

As items are deleted, they are removed from any local secondary index
and global secondary index immediately in the same eventually consistent
way as a standard delete operation.

For more information, see [Time To
Live](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/TTL.html)
in the Amazon DynamoDB Developer Guide.

### Usage

    dynamodb_update_time_to_live(TableName, TimeToLiveSpecification)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="dynamodb_update_time_to_live_:_TableName">TableName</code></td>
<td><p>[required] The name of the table to be configured.</p></td>
</tr>
<tr class="even">
<td><code
id="dynamodb_update_time_to_live_:_TimeToLiveSpecification">TimeToLiveSpecification</code></td>
<td><p>[required] Represents the settings used to enable or disable Time
to Live for the specified table.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TimeToLiveSpecification = list(
        Enabled = TRUE|FALSE,
        AttributeName = "string"
      )
    )

### Request syntax

    svc$update_time_to_live(
      TableName = "string",
      TimeToLiveSpecification = list(
        Enabled = TRUE|FALSE,
        AttributeName = "string"
      )
    )
