<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_list_instance_storage_configs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This API is in preview release for Amazon Connect and is subject to change

### Description

This API is in preview release for Amazon Connect and is subject to
change.

Returns a paginated list of storage configs for the identified instance
and resource type.

### Usage

    connect_list_instance_storage_configs(InstanceId, ResourceType,
      NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_list_instance_storage_configs_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_list_instance_storage_configs_:_ResourceType">ResourceType</code></td>
<td><p>[required] A valid resource type.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_list_instance_storage_configs_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results. Use the value returned in
the previous response in the next request to retrieve the next set of
results.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_list_instance_storage_configs_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return per page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      StorageConfigs = list(
        list(
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_instance_storage_configs(
      InstanceId = "string",
      ResourceType = "CHAT_TRANSCRIPTS"|"CALL_RECORDINGS"|"SCHEDULED_REPORTS"|"MEDIA_STREAMS"|"CONTACT_TRACE_RECORDS"|"AGENT_EVENTS"|"REAL_TIME_CONTACT_ANALYSIS_SEGMENTS"|"ATTACHMENTS"|"CONTACT_EVALUATIONS",
      NextToken = "string",
      MaxResults = 123
    )
