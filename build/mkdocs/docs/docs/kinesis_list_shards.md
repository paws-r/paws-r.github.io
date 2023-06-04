<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesis_list_shards</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the shards in a stream and provides information about each shard

### Description

Lists the shards in a stream and provides information about each shard.
This operation has a limit of 1000 transactions per second per data
stream.

When invoking this API, it is recommended you use the `StreamARN` input
parameter rather than the `StreamName` input parameter.

This action does not list expired shards. For information about expired
shards, see [Data Routing, Data Persistence, and Shard State after a
Reshard](https://docs.aws.amazon.com/streams/latest/dev/kinesis-using-sdk-java-after-resharding.html#kinesis-using-sdk-java-resharding-data-routing).

This API is a new operation that is used by the Amazon Kinesis Client
Library (KCL). If you have a fine-grained IAM policy that only allows
specific operations, you must update your policy to allow calls to this
API. For more information, see [Controlling Access to Amazon Kinesis
Data Streams Resources Using
IAM](https://docs.aws.amazon.com/streams/latest/dev/controlling-access.html).

### Usage

    kinesis_list_shards(StreamName, NextToken, ExclusiveStartShardId,
      MaxResults, StreamCreationTimestamp, ShardFilter, StreamARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kinesis_list_shards_:_StreamName">StreamName</code></td>
<td><p>The name of the data stream whose shards you want to list.</p>
<p>You cannot specify this parameter if you specify the
<code>NextToken</code> parameter.</p></td>
</tr>
<tr class="even">
<td><code id="kinesis_list_shards_:_NextToken">NextToken</code></td>
<td><p>When the number of shards in the data stream is greater than the
default value for the <code>MaxResults</code> parameter, or if you
explicitly specify a value for <code>MaxResults</code> that is less than
the number of shards in the data stream, the response includes a
pagination token named <code>NextToken</code>. You can specify this
<code>NextToken</code> value in a subsequent call to
<code>list_shards</code> to list the next set of shards.</p>
<p>Don't specify <code>StreamName</code> or
<code>StreamCreationTimestamp</code> if you specify
<code>NextToken</code> because the latter unambiguously identifies the
stream.</p>
<p>You can optionally specify a value for the <code>MaxResults</code>
parameter when you specify <code>NextToken</code>. If you specify a
<code>MaxResults</code> value that is less than the number of shards
that the operation returns if you don't specify <code>MaxResults</code>,
the response will contain a new <code>NextToken</code> value. You can
use the new <code>NextToken</code> value in a subsequent call to the
<code>list_shards</code> operation.</p>
<p>Tokens expire after 300 seconds. When you obtain a value for
<code>NextToken</code> in the response to a call to
<code>list_shards</code>, you have 300 seconds to use that value. If you
specify an expired token in a call to <code>list_shards</code>, you get
<code>ExpiredNextTokenException</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="kinesis_list_shards_:_ExclusiveStartShardId">ExclusiveStartShardId</code></td>
<td><p>Specify this parameter to indicate that you want to list the
shards starting with the shard whose ID immediately follows
<code>ExclusiveStartShardId</code>.</p>
<p>If you don't specify this parameter, the default behavior is for
<code>list_shards</code> to list the shards starting with the first one
in the stream.</p>
<p>You cannot specify this parameter if you specify
<code>NextToken</code>.</p></td>
</tr>
<tr class="even">
<td><code id="kinesis_list_shards_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of shards to return in a single call to
<code>list_shards</code>. The maximum number of shards to return in a
single call. The default value is 1000. If you specify a value greater
than 1000, at most 1000 results are returned.</p>
<p>When the number of shards to be listed is greater than the value of
<code>MaxResults</code>, the response contains a <code>NextToken</code>
value that you can use in a subsequent call to <code>list_shards</code>
to list the next set of shards.</p></td>
</tr>
<tr class="odd">
<td><code
id="kinesis_list_shards_:_StreamCreationTimestamp">StreamCreationTimestamp</code></td>
<td><p>Specify this input parameter to distinguish data streams that
have the same name. For example, if you create a data stream and then
delete it, and you later create another data stream with the same name,
you can use this input parameter to specify which of the two streams you
want to list the shards for.</p>
<p>You cannot specify this parameter if you specify the
<code>NextToken</code> parameter.</p></td>
</tr>
<tr class="even">
<td><code id="kinesis_list_shards_:_ShardFilter">ShardFilter</code></td>
<td><p>Enables you to filter out the response of the
<code>list_shards</code> API. You can only specify one filter at a
time.</p>
<p>If you use the <code>ShardFilter</code> parameter when invoking the
ListShards API, the <code>Type</code> is the required property and must
be specified. If you specify the <code>AT_TRIM_HORIZON</code>,
<code>FROM_TRIM_HORIZON</code>, or <code>AT_LATEST</code> types, you do
not need to specify either the <code>ShardId</code> or the
<code>Timestamp</code> optional properties.</p>
<p>If you specify the <code>AFTER_SHARD_ID</code> type, you must also
provide the value for the optional <code>ShardId</code> property. The
<code>ShardId</code> property is identical in fuctionality to the
<code>ExclusiveStartShardId</code> parameter of the
<code>list_shards</code> API. When <code>ShardId</code> property is
specified, the response includes the shards starting with the shard
whose ID immediately follows the <code>ShardId</code> that you
provided.</p>
<p>If you specify the <code>AT_TIMESTAMP</code> or
<code>FROM_TIMESTAMP_ID</code> type, you must also provide the value for
the optional <code>Timestamp</code> property. If you specify the
AT_TIMESTAMP type, then all shards that were open at the provided
timestamp are returned. If you specify the FROM_TIMESTAMP type, then all
shards starting from the provided timestamp to TIP are
returned.</p></td>
</tr>
<tr class="odd">
<td><code id="kinesis_list_shards_:_StreamARN">StreamARN</code></td>
<td><p>The ARN of the stream.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Shards = list(
        list(
          ShardId = "string",
          ParentShardId = "string",
          AdjacentParentShardId = "string",
          HashKeyRange = list(
            StartingHashKey = "string",
            EndingHashKey = "string"
          ),
          SequenceNumberRange = list(
            StartingSequenceNumber = "string",
            EndingSequenceNumber = "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_shards(
      StreamName = "string",
      NextToken = "string",
      ExclusiveStartShardId = "string",
      MaxResults = 123,
      StreamCreationTimestamp = as.POSIXct(
        "2015-01-01"
      ),
      ShardFilter = list(
        Type = "AFTER_SHARD_ID"|"AT_TRIM_HORIZON"|"FROM_TRIM_HORIZON"|"AT_LATEST"|"AT_TIMESTAMP"|"FROM_TIMESTAMP",
        ShardId = "string",
        Timestamp = as.POSIXct(
          "2015-01-01"
        )
      ),
      StreamARN = "string"
    )
