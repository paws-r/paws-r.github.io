<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dynamodb_describe_kinesis_streaming_destination</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about the status of Kinesis streaming

### Description

Returns information about the status of Kinesis streaming.

### Usage

    dynamodb_describe_kinesis_streaming_destination(TableName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="dynamodb_describe_kinesis_streaming_destination_:_TableName">TableName</code></td>
<td><p>[required] The name of the table being described.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TableName = "string",
      KinesisDataStreamDestinations = list(
        list(
          StreamArn = "string",
          DestinationStatus = "ENABLING"|"ACTIVE"|"DISABLING"|"DISABLED"|"ENABLE_FAILED",
          DestinationStatusDescription = "string"
        )
      )
    )

### Request syntax

    svc$describe_kinesis_streaming_destination(
      TableName = "string"
    )
