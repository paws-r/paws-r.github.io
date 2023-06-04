<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesis_update_shard_count</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the shard count of the specified stream to the specified number of shards

### Description

Updates the shard count of the specified stream to the specified number
of shards. This API is only supported for the data streams with the
provisioned capacity mode.

When invoking this API, it is recommended you use the `StreamARN` input
parameter rather than the `StreamName` input parameter.

Updating the shard count is an asynchronous operation. Upon receiving
the request, Kinesis Data Streams returns immediately and sets the
status of the stream to `UPDATING`. After the update is complete,
Kinesis Data Streams sets the status of the stream back to `ACTIVE`.
Depending on the size of the stream, the scaling action could take a few
minutes to complete. You can continue to read and write data to your
stream while its status is `UPDATING`.

To update the shard count, Kinesis Data Streams performs splits or
merges on individual shards. This can cause short-lived shards to be
created, in addition to the final shards. These short-lived shards count
towards your total shard limit for your account in the Region.

When using this operation, we recommend that you specify a target shard
count that is a multiple of 25% (25%, 50%, 75%, 100%). You can specify
any target value within your shard limit. However, if you specify a
target that isn't a multiple of 25%, the scaling action might take
longer to complete.

This operation has the following default limits. By default, you cannot
do the following:

-   Scale more than ten times per rolling 24-hour period per stream

-   Scale up to more than double your current shard count for a stream

-   Scale down below half your current shard count for a stream

-   Scale up to more than 10000 shards in a stream

-   Scale a stream with more than 10000 shards down unless the result is
    less than 10000 shards

-   Scale up to more than the shard limit for your account

For the default limits for an Amazon Web Services account, see [Streams
Limits](https://docs.aws.amazon.com/streams/latest/dev/service-sizes-and-limits.html)
in the *Amazon Kinesis Data Streams Developer Guide*. To request an
increase in the call rate limit, the shard limit for this API, or your
overall shard limit, use the limits form.

### Usage

    kinesis_update_shard_count(StreamName, TargetShardCount, ScalingType,
      StreamARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kinesis_update_shard_count_:_StreamName">StreamName</code></td>
<td><p>The name of the stream.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesis_update_shard_count_:_TargetShardCount">TargetShardCount</code></td>
<td><p>[required] The new number of shards. This value has the following
default limits. By default, you cannot do the following:</p>
<ul>
<li><p>Set this value to more than double your current shard count for a
stream.</p></li>
<li><p>Set this value below half your current shard count for a
stream.</p></li>
<li><p>Set this value to more than 10000 shards in a stream (the default
limit for shard count per stream is 10000 per account per region),
unless you request a limit increase.</p></li>
<li><p>Scale a stream with more than 10000 shards down unless you set
this value to less than 10000 shards.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="kinesis_update_shard_count_:_ScalingType">ScalingType</code></td>
<td><p>[required] The scaling type. Uniform scaling creates shards of
equal size.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesis_update_shard_count_:_StreamARN">StreamARN</code></td>
<td><p>The ARN of the stream.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      StreamName = "string",
      CurrentShardCount = 123,
      TargetShardCount = 123,
      StreamARN = "string"
    )

### Request syntax

    svc$update_shard_count(
      StreamName = "string",
      TargetShardCount = 123,
      ScalingType = "UNIFORM_SCALING",
      StreamARN = "string"
    )
