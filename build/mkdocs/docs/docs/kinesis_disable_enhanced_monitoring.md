<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesis_disable_enhanced_monitoring</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disables enhanced monitoring

### Description

Disables enhanced monitoring.

When invoking this API, it is recommended you use the `StreamARN` input
parameter rather than the `StreamName` input parameter.

### Usage

    kinesis_disable_enhanced_monitoring(StreamName, ShardLevelMetrics,
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
id="kinesis_disable_enhanced_monitoring_:_StreamName">StreamName</code></td>
<td><p>The name of the Kinesis data stream for which to disable enhanced
monitoring.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesis_disable_enhanced_monitoring_:_ShardLevelMetrics">ShardLevelMetrics</code></td>
<td><p>[required] List of shard-level metrics to disable.</p>
<p>The following are the valid shard-level metrics. The value
"<code>ALL</code>" disables every metric.</p>
<ul>
<li><p><code>IncomingBytes</code></p></li>
<li><p><code>IncomingRecords</code></p></li>
<li><p><code>OutgoingBytes</code></p></li>
<li><p><code>OutgoingRecords</code></p></li>
<li><p><code>WriteProvisionedThroughputExceeded</code></p></li>
<li><p><code>ReadProvisionedThroughputExceeded</code></p></li>
<li><p><code>IteratorAgeMilliseconds</code></p></li>
<li><p><code>ALL</code></p></li>
</ul>
<p>For more information, see <a
href="https://docs.aws.amazon.com/streams/latest/dev/monitoring-with-cloudwatch.html">Monitoring
the Amazon Kinesis Data Streams Service with Amazon CloudWatch</a> in
the <em>Amazon Kinesis Data Streams Developer Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="kinesis_disable_enhanced_monitoring_:_StreamARN">StreamARN</code></td>
<td><p>The ARN of the stream.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      StreamName = "string",
      CurrentShardLevelMetrics = list(
        "IncomingBytes"|"IncomingRecords"|"OutgoingBytes"|"OutgoingRecords"|"WriteProvisionedThroughputExceeded"|"ReadProvisionedThroughputExceeded"|"IteratorAgeMilliseconds"|"ALL"
      ),
      DesiredShardLevelMetrics = list(
        "IncomingBytes"|"IncomingRecords"|"OutgoingBytes"|"OutgoingRecords"|"WriteProvisionedThroughputExceeded"|"ReadProvisionedThroughputExceeded"|"IteratorAgeMilliseconds"|"ALL"
      ),
      StreamARN = "string"
    )

### Request syntax

    svc$disable_enhanced_monitoring(
      StreamName = "string",
      ShardLevelMetrics = list(
        "IncomingBytes"|"IncomingRecords"|"OutgoingBytes"|"OutgoingRecords"|"WriteProvisionedThroughputExceeded"|"ReadProvisionedThroughputExceeded"|"IteratorAgeMilliseconds"|"ALL"
      ),
      StreamARN = "string"
    )
