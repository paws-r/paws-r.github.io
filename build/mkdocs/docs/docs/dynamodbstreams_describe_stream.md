<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dynamodbstreams_describe_stream</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about a stream, including the current status of the stream, its Amazon Resource Name (ARN), the composition of its shards, and its corresponding DynamoDB table

### Description

Returns information about a stream, including the current status of the
stream, its Amazon Resource Name (ARN), the composition of its shards,
and its corresponding DynamoDB table.

You can call `describe_stream` at a maximum rate of 10 times per second.

Each shard in the stream has a `SequenceNumberRange` associated with it.
If the `SequenceNumberRange` has a `StartingSequenceNumber` but no
`EndingSequenceNumber`, then the shard is still open (able to receive
more stream records). If both `StartingSequenceNumber` and
`EndingSequenceNumber` are present, then that shard is closed and can no
longer receive more data.

### Usage

    dynamodbstreams_describe_stream(StreamArn, Limit, ExclusiveStartShardId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="dynamodbstreams_describe_stream_:_StreamArn">StreamArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) for the
stream.</p></td>
</tr>
<tr class="even">
<td><code id="dynamodbstreams_describe_stream_:_Limit">Limit</code></td>
<td><p>The maximum number of shard objects to return. The upper limit is
100.</p></td>
</tr>
<tr class="odd">
<td><code
id="dynamodbstreams_describe_stream_:_ExclusiveStartShardId">ExclusiveStartShardId</code></td>
<td><p>The shard ID of the first item that this operation will evaluate.
Use the value that was returned for <code>LastEvaluatedShardId</code> in
the previous operation.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      StreamDescription = list(
        StreamArn = "string",
        StreamLabel = "string",
        StreamStatus = "ENABLING"|"ENABLED"|"DISABLING"|"DISABLED",
        StreamViewType = "NEW_IMAGE"|"OLD_IMAGE"|"NEW_AND_OLD_IMAGES"|"KEYS_ONLY",
        CreationRequestDateTime = as.POSIXct(
          "2015-01-01"
        ),
        TableName = "string",
        KeySchema = list(
          list(
            AttributeName = "string",
            KeyType = "HASH"|"RANGE"
          )
        ),
        Shards = list(
          list(
            ShardId = "string",
            SequenceNumberRange = list(
              StartingSequenceNumber = "string",
              EndingSequenceNumber = "string"
            ),
            ParentShardId = "string"
          )
        ),
        LastEvaluatedShardId = "string"
      )
    )

### Request syntax

    svc$describe_stream(
      StreamArn = "string",
      Limit = 123,
      ExclusiveStartShardId = "string"
    )

### Examples

    ## Not run: 
    # The following example describes a stream with a given stream ARN.
    svc$describe_stream(
      StreamArn = "arn:aws:dynamodb:us-west-2:111122223333:table/Forum/stream/2..."
    )

    ## End(Not run)
