<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_start_activity_stream</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts a database activity stream to monitor activity on the database

### Description

Starts a database activity stream to monitor activity on the database.
For more information, see [Monitoring Amazon Aurora with Database
Activity
Streams](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/DBActivityStreams.html)
in the *Amazon Aurora User Guide* or [Monitoring Amazon RDS with
Database Activity
Streams](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/DBActivityStreams.html)
in the *Amazon RDS User Guide*.

### Usage

    rds_start_activity_stream(ResourceArn, Mode, KmsKeyId, ApplyImmediately,
      EngineNativeAuditFieldsIncluded)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_start_activity_stream_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the DB cluster, for
example,
<code>arn:aws:rds:us-east-1:12345667890:cluster:das-cluster</code>.</p></td>
</tr>
<tr class="even">
<td><code id="rds_start_activity_stream_:_Mode">Mode</code></td>
<td><p>[required] Specifies the mode of the database activity stream.
Database events such as a change or access generate an activity stream
event. The database session can handle these events either synchronously
or asynchronously.</p></td>
</tr>
<tr class="odd">
<td><code id="rds_start_activity_stream_:_KmsKeyId">KmsKeyId</code></td>
<td><p>[required] The Amazon Web Services KMS key identifier for
encrypting messages in the database activity stream. The Amazon Web
Services KMS key identifier is the key ARN, key ID, alias ARN, or alias
name for the KMS key.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_start_activity_stream_:_ApplyImmediately">ApplyImmediately</code></td>
<td><p>Specifies whether or not the database activity stream is to start
as soon as possible, regardless of the maintenance window for the
database.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_start_activity_stream_:_EngineNativeAuditFieldsIncluded">EngineNativeAuditFieldsIncluded</code></td>
<td><p>Specifies whether the database activity stream includes
engine-native audit fields. This option applies to an Oracle or
Microsoft SQL Server DB instance. By default, no engine-native audit
fields are included.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      KmsKeyId = "string",
      KinesisStreamName = "string",
      Status = "stopped"|"starting"|"started"|"stopping",
      Mode = "sync"|"async",
      ApplyImmediately = TRUE|FALSE,
      EngineNativeAuditFieldsIncluded = TRUE|FALSE
    )

### Request syntax

    svc$start_activity_stream(
      ResourceArn = "string",
      Mode = "sync"|"async",
      KmsKeyId = "string",
      ApplyImmediately = TRUE|FALSE,
      EngineNativeAuditFieldsIncluded = TRUE|FALSE
    )
