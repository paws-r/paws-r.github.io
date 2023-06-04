<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>athena_get_work_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about the workgroup with the specified name

### Description

Returns information about the workgroup with the specified name.

### Usage

    athena_get_work_group(WorkGroup)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="athena_get_work_group_:_WorkGroup">WorkGroup</code></td>
<td><p>[required] The name of the workgroup.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      WorkGroup = list(
        Name = "string",
        State = "ENABLED"|"DISABLED",
        Configuration = list(
          ResultConfiguration = list(
            OutputLocation = "string",
            EncryptionConfiguration = list(
              EncryptionOption = "SSE_S3"|"SSE_KMS"|"CSE_KMS",
              KmsKey = "string"
            ),
            ExpectedBucketOwner = "string",
            AclConfiguration = list(
              S3AclOption = "BUCKET_OWNER_FULL_CONTROL"
            )
          ),
          EnforceWorkGroupConfiguration = TRUE|FALSE,
          PublishCloudWatchMetricsEnabled = TRUE|FALSE,
          BytesScannedCutoffPerQuery = 123,
          RequesterPaysEnabled = TRUE|FALSE,
          EngineVersion = list(
            SelectedEngineVersion = "string",
            EffectiveEngineVersion = "string"
          ),
          AdditionalConfiguration = "string",
          ExecutionRole = "string",
          CustomerContentEncryptionConfiguration = list(
            KmsKey = "string"
          ),
          EnableMinimumEncryptionConfiguration = TRUE|FALSE
        ),
        Description = "string",
        CreationTime = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$get_work_group(
      WorkGroup = "string"
    )
