<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>qldb_describe_journal_kinesis_stream</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns detailed information about a given Amazon QLDB journal stream

### Description

Returns detailed information about a given Amazon QLDB journal stream.
The output includes the Amazon Resource Name (ARN), stream name, current
status, creation time, and the parameters of the original stream
creation request.

This action does not return any expired journal streams. For more
information, see [Expiration for terminal
streams](https://docs.aws.amazon.com/qldb/latest/developerguide/streams.create.html#streams.create.states.expiration)
in the *Amazon QLDB Developer Guide*.

### Usage

    qldb_describe_journal_kinesis_stream(LedgerName, StreamId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="qldb_describe_journal_kinesis_stream_:_LedgerName">LedgerName</code></td>
<td><p>[required] The name of the ledger.</p></td>
</tr>
<tr class="even">
<td><code
id="qldb_describe_journal_kinesis_stream_:_StreamId">StreamId</code></td>
<td><p>[required] The UUID (represented in Base62-encoded text) of the
QLDB journal stream to describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Stream = list(
        LedgerName = "string",
        CreationTime = as.POSIXct(
          "2015-01-01"
        ),
        InclusiveStartTime = as.POSIXct(
          "2015-01-01"
        ),
        ExclusiveEndTime = as.POSIXct(
          "2015-01-01"
        ),
        RoleArn = "string",
        StreamId = "string",
        Arn = "string",
        Status = "ACTIVE"|"COMPLETED"|"CANCELED"|"FAILED"|"IMPAIRED",
        KinesisConfiguration = list(
          StreamArn = "string",
          AggregationEnabled = TRUE|FALSE
        ),
        ErrorCause = "KINESIS_STREAM_NOT_FOUND"|"IAM_PERMISSION_REVOKED",
        StreamName = "string"
      )
    )

### Request syntax

    svc$describe_journal_kinesis_stream(
      LedgerName = "string",
      StreamId = "string"
    )
