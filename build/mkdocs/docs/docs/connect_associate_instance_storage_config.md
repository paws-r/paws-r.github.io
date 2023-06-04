<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_associate_instance_storage_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This API is in preview release for Amazon Connect and is subject to change

### Description

This API is in preview release for Amazon Connect and is subject to
change.

Associates a storage resource type for the first time. You can only
associate one type of storage configuration in a single call. This
means, for example, that you can't define an instance with multiple S3
buckets for storing chat transcripts.

This API does not create a resource that doesn't exist. It only
associates it to the instance. Ensure that the resource being specified
in the storage configuration, like an S3 bucket, exists when being used
for association.

### Usage

    connect_associate_instance_storage_config(InstanceId, ResourceType,
      StorageConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_associate_instance_storage_config_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_associate_instance_storage_config_:_ResourceType">ResourceType</code></td>
<td><p>[required] A valid resource type.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_associate_instance_storage_config_:_StorageConfig">StorageConfig</code></td>
<td><p>[required] A valid storage type.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AssociationId = "string"
    )

### Request syntax

    svc$associate_instance_storage_config(
      InstanceId = "string",
      ResourceType = "CHAT_TRANSCRIPTS"|"CALL_RECORDINGS"|"SCHEDULED_REPORTS"|"MEDIA_STREAMS"|"CONTACT_TRACE_RECORDS"|"AGENT_EVENTS"|"REAL_TIME_CONTACT_ANALYSIS_SEGMENTS"|"ATTACHMENTS"|"CONTACT_EVALUATIONS",
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
