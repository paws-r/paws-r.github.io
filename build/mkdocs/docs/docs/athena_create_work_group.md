<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>athena_create_work_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a workgroup with the specified name

### Description

Creates a workgroup with the specified name. A workgroup can be an
Apache Spark enabled workgroup or an Athena SQL workgroup.

### Usage

    athena_create_work_group(Name, Configuration, Description, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="athena_create_work_group_:_Name">Name</code></td>
<td><p>[required] The workgroup name.</p></td>
</tr>
<tr class="even">
<td><code
id="athena_create_work_group_:_Configuration">Configuration</code></td>
<td><p>Contains configuration information for creating an Athena SQL
workgroup or Spark enabled Athena workgroup. Athena SQL workgroup
configuration includes the location in Amazon S3 where query and
calculation results are stored, the encryption configuration, if any,
used for encrypting query results, whether the Amazon CloudWatch Metrics
are enabled for the workgroup, the limit for the amount of bytes scanned
(cutoff) per query, if it is specified, and whether workgroup's settings
(specified with <code>EnforceWorkGroupConfiguration</code>) in the
<code>WorkGroupConfiguration</code> override client-side settings. See
WorkGroupConfiguration$EnforceWorkGroupConfiguration.</p></td>
</tr>
<tr class="odd">
<td><code
id="athena_create_work_group_:_Description">Description</code></td>
<td><p>The workgroup description.</p></td>
</tr>
<tr class="even">
<td><code id="athena_create_work_group_:_Tags">Tags</code></td>
<td><p>A list of comma separated tags to add to the workgroup that is
created.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_work_group(
      Name = "string",
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
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
