<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dynamodb_disable_kinesis_streaming_destination</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops replication from the DynamoDB table to the Kinesis data stream

### Description

Stops replication from the DynamoDB table to the Kinesis data stream.
This is done without deleting either of the resources.

### Usage

    dynamodb_disable_kinesis_streaming_destination(TableName, StreamArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="dynamodb_disable_kinesis_streaming_destination_:_TableName">TableName</code></td>
<td><p>[required] The name of the DynamoDB table.</p></td>
</tr>
<tr class="even">
<td><code
id="dynamodb_disable_kinesis_streaming_destination_:_StreamArn">StreamArn</code></td>
<td><p>[required] The ARN for a Kinesis data stream.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TableName = "string",
      StreamArn = "string",
      DestinationStatus = "ENABLING"|"ACTIVE"|"DISABLING"|"DISABLED"|"ENABLE_FAILED"
    )

### Request syntax

    svc$disable_kinesis_streaming_destination(
      TableName = "string",
      StreamArn = "string"
    )
