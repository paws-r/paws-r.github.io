<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>athena_update_work_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the workgroup with the specified name

### Description

Updates the workgroup with the specified name. The workgroup's name
cannot be changed. Only `ConfigurationUpdates` can be specified.

### Usage

    athena_update_work_group(WorkGroup, Description, ConfigurationUpdates,
      State)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="athena_update_work_group_:_WorkGroup">WorkGroup</code></td>
<td><p>[required] The specified workgroup that will be updated.</p></td>
</tr>
<tr class="even">
<td><code
id="athena_update_work_group_:_Description">Description</code></td>
<td><p>The workgroup description.</p></td>
</tr>
<tr class="odd">
<td><code
id="athena_update_work_group_:_ConfigurationUpdates">ConfigurationUpdates</code></td>
<td><p>Contains configuration updates for an Athena SQL
workgroup.</p></td>
</tr>
<tr class="even">
<td><code id="athena_update_work_group_:_State">State</code></td>
<td><p>The workgroup state that will be updated for the given
workgroup.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_work_group(
      WorkGroup = "string",
      Description = "string",
      ConfigurationUpdates = list(
        EnforceWorkGroupConfiguration = TRUE|FALSE,
        ResultConfigurationUpdates = list(
          OutputLocation = "string",
          RemoveOutputLocation = TRUE|FALSE,
          EncryptionConfiguration = list(
            EncryptionOption = "SSE_S3"|"SSE_KMS"|"CSE_KMS",
            KmsKey = "string"
          ),
          RemoveEncryptionConfiguration = TRUE|FALSE,
          ExpectedBucketOwner = "string",
          RemoveExpectedBucketOwner = TRUE|FALSE,
          AclConfiguration = list(
            S3AclOption = "BUCKET_OWNER_FULL_CONTROL"
          ),
          RemoveAclConfiguration = TRUE|FALSE
        ),
        PublishCloudWatchMetricsEnabled = TRUE|FALSE,
        BytesScannedCutoffPerQuery = 123,
        RemoveBytesScannedCutoffPerQuery = TRUE|FALSE,
        RequesterPaysEnabled = TRUE|FALSE,
        EngineVersion = list(
          SelectedEngineVersion = "string",
          EffectiveEngineVersion = "string"
        ),
        RemoveCustomerContentEncryptionConfiguration = TRUE|FALSE,
        AdditionalConfiguration = "string",
        ExecutionRole = "string",
        CustomerContentEncryptionConfiguration = list(
          KmsKey = "string"
        ),
        EnableMinimumEncryptionConfiguration = TRUE|FALSE
      ),
      State = "ENABLED"|"DISABLED"
    )
