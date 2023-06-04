<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_describe_instance_storage_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This API is in preview release for Amazon Connect and is subject to change

### Description

This API is in preview release for Amazon Connect and is subject to
change.

Retrieves the current storage configurations for the specified resource
type, association ID, and instance ID.

### Usage

    connect_describe_instance_storage_config(InstanceId, AssociationId,
      ResourceType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_describe_instance_storage_config_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_describe_instance_storage_config_:_AssociationId">AssociationId</code></td>
<td><p>[required] The existing association identifier that uniquely
identifies the resource type and storage config for the given instance
ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_describe_instance_storage_config_:_ResourceType">ResourceType</code></td>
<td><p>[required] A valid resource type.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      StorageConfig = list(
        AssociationId = "string",
        StorageType = "S3"|"KINESIS_VIDEO_STREAM"|"KINESIS_STREAM"|"KINESIS_FIREHOSE",
        S3Config = list(
          BucketName = "string",
          BucketPrefix = "string",
          EncryptionConfig = list(
            EncryptionType = "KMS",
            KeyId = "string"
          )
        ),
        KinesisVideoStreamConfig = list(
          Prefix = "string",
          RetentionPeriodHours = 123,
          EncryptionConfig = list(
            EncryptionType = "KMS",
            KeyId = "string"
          )
        ),
        KinesisStreamConfig = list(
          StreamArn = "string"
        ),
        KinesisFirehoseConfig = list(
          FirehoseArn = "string"
        )
      )
    )

### Request syntax

    svc$describe_instance_storage_config(
      InstanceId = "string",
      AssociationId = "string",
      ResourceType = "CHAT_TRANSCRIPTS"|"CALL_RECORDINGS"|"SCHEDULED_REPORTS"|"MEDIA_STREAMS"|"CONTACT_TRACE_RECORDS"|"AGENT_EVENTS"|"REAL_TIME_CONTACT_ANALYSIS_SEGMENTS"|"ATTACHMENTS"|"CONTACT_EVALUATIONS"
    )
