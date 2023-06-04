<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_modify_activity_stream</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Changes the audit policy state of a database activity stream to either locked (default) or unlocked

### Description

Changes the audit policy state of a database activity stream to either
locked (default) or unlocked. A locked policy is read-only, whereas an
unlocked policy is read/write. If your activity stream is started and
locked, you can unlock it, customize your audit policy, and then lock
your activity stream. Restarting the activity stream isn't required. For
more information, see [Modifying a database activity
stream](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/DBActivityStreams.Modifying.html)
in the *Amazon RDS User Guide*.

This operation is supported for RDS for Oracle and Microsoft SQL Server.

### Usage

    rds_modify_activity_stream(ResourceArn, AuditPolicyState)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_modify_activity_stream_:_ResourceArn">ResourceArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the RDS for Oracle or Microsoft
SQL Server DB instance. For example,
<code>arn:aws:rds:us-east-1:12345667890:instance:my-orcl-db</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_modify_activity_stream_:_AuditPolicyState">AuditPolicyState</code></td>
<td><p>The audit policy state. When a policy is unlocked, it is
read/write. When it is locked, it is read-only. You can edit your audit
policy only when the activity stream is unlocked or stopped.</p></td>
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
      EngineNativeAuditFieldsIncluded = TRUE|FALSE,
      PolicyStatus = "locked"|"unlocked"|"locking-policy"|"unlocking-policy"
    )

### Request syntax

    svc$modify_activity_stream(
      ResourceArn = "string",
      AuditPolicyState = "locked"|"unlocked"
    )
