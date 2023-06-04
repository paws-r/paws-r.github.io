<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dynamodbstreams_get_shard_iterator</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a shard iterator

### Description

Returns a shard iterator. A shard iterator provides information about
how to retrieve the stream records from within a shard. Use the shard
iterator in a subsequent `get_records` request to read the stream
records from the shard.

A shard iterator expires 15 minutes after it is returned to the
requester.

### Usage

    dynamodbstreams_get_shard_iterator(StreamArn, ShardId,
      ShardIteratorType, SequenceNumber)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="dynamodbstreams_get_shard_iterator_:_StreamArn">StreamArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) for the
stream.</p></td>
</tr>
<tr class="even">
<td><code
id="dynamodbstreams_get_shard_iterator_:_ShardId">ShardId</code></td>
<td><p>[required] The identifier of the shard. The iterator will be
returned for this shard ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="dynamodbstreams_get_shard_iterator_:_ShardIteratorType">ShardIteratorType</code></td>
<td><p>[required] Determines how the shard iterator is used to start
reading stream records from the shard:</p>
<ul>
<li><p><code>AT_SEQUENCE_NUMBER</code> - Start reading exactly from the
position denoted by a specific sequence number.</p></li>
<li><p><code>AFTER_SEQUENCE_NUMBER</code> - Start reading right after
the position denoted by a specific sequence number.</p></li>
<li><p><code>TRIM_HORIZON</code> - Start reading at the last (untrimmed)
stream record, which is the oldest record in the shard. In DynamoDB
Streams, there is a 24 hour limit on data retention. Stream records
whose age exceeds this limit are subject to removal (trimming) from the
stream.</p></li>
<li><p><code>LATEST</code> - Start reading just after the most recent
stream record in the shard, so that you always read the most recent data
in the shard.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="dynamodbstreams_get_shard_iterator_:_SequenceNumber">SequenceNumber</code></td>
<td><p>The sequence number of a stream record in the shard from which to
start reading.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ShardIterator = "string"
    )

### Request syntax

    svc$get_shard_iterator(
      StreamArn = "string",
      ShardId = "string",
      ShardIteratorType = "TRIM_HORIZON"|"LATEST"|"AT_SEQUENCE_NUMBER"|"AFTER_SEQUENCE_NUMBER",
      SequenceNumber = "string"
    )

### Examples

    ## Not run: 
    # The following example returns a shard iterator for the provided stream
    # ARN and shard ID.
    svc$get_shard_iterator(
      ShardId = "00000001414576573621-f55eea83",
      ShardIteratorType = "TRIM_HORIZON",
      StreamArn = "arn:aws:dynamodb:us-west-2:111122223333:table/Forum/stream/2..."
    )

    ## End(Not run)
