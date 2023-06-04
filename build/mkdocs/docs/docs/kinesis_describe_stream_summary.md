<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesis_describe_stream_summary</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides a summarized description of the specified Kinesis data stream without the shard list

### Description

Provides a summarized description of the specified Kinesis data stream
without the shard list.

When invoking this API, it is recommended you use the `StreamARN` input
parameter rather than the `StreamName` input parameter.

The information returned includes the stream name, Amazon Resource Name
(ARN), status, record retention period, approximate creation time,
monitoring, encryption details, and open shard count.

`describe_stream_summary` has a limit of 20 transactions per second per
account.

### Usage

    kinesis_describe_stream_summary(StreamName, StreamARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kinesis_describe_stream_summary_:_StreamName">StreamName</code></td>
<td><p>The name of the stream to describe.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesis_describe_stream_summary_:_StreamARN">StreamARN</code></td>
<td><p>The ARN of the stream.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      StreamDescriptionSummary = list(
        StreamName = "string",
        StreamARN = "string",
        StreamStatus = "CREATING"|"DELETING"|"ACTIVE"|"UPDATING",
        StreamModeDetails = list(
          StreamMode = "PROVISIONED"|"ON_DEMAND"
        ),
        RetentionPeriodHours = 123,
        StreamCreationTimestamp = as.POSIXct(
          "2015-01-01"
        ),
        EnhancedMonitoring = list(
          list(
            ShardLevelMetrics = list(
              "IncomingBytes"|"IncomingRecords"|"OutgoingBytes"|"OutgoingRecords"|"WriteProvisionedThroughputExceeded"|"ReadProvisionedThroughputExceeded"|"IteratorAgeMilliseconds"|"ALL"
            )
          )
        ),
        EncryptionType = "NONE"|"KMS",
        KeyId = "string",
        OpenShardCount = 123,
        ConsumerCount = 123
      )
    )

### Request syntax

    svc$describe_stream_summary(
      StreamName = "string",
      StreamARN = "string"
    )
