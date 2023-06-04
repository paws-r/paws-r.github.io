<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_stop_activity_stream</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops a database activity stream that was started using the Amazon Web Services console, the start-activity-stream CLI command, or the StartActivityStream action

### Description

Stops a database activity stream that was started using the Amazon Web
Services console, the `start-activity-stream` CLI command, or the
`start_activity_stream` action.

For more information, see [Monitoring Amazon Aurora with Database
Activity
Streams](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/DBActivityStreams.html)
in the *Amazon Aurora User Guide* or [Monitoring Amazon RDS with
Database Activity
Streams](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/DBActivityStreams.html)
in the *Amazon RDS User Guide*.

### Usage

    rds_stop_activity_stream(ResourceArn, ApplyImmediately)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_stop_activity_stream_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the DB cluster for
the database activity stream. For example,
<code>arn:aws:rds:us-east-1:12345667890:cluster:das-cluster</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_stop_activity_stream_:_ApplyImmediately">ApplyImmediately</code></td>
<td><p>Specifies whether or not the database activity stream is to stop
as soon as possible, regardless of the maintenance window for the
database.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      KmsKeyId = "string",
      KinesisStreamName = "string",
      Status = "stopped"|"starting"|"started"|"stopping"
    )

### Request syntax

    svc$stop_activity_stream(
      ResourceArn = "string",
      ApplyImmediately = TRUE|FALSE
    )
