<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3control_put_storage_lens_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Puts an Amazon S3 Storage Lens configuration

### Description

Puts an Amazon S3 Storage Lens configuration. For more information about
S3 Storage Lens, see [Working with Amazon S3 Storage
Lens](https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens.html)
in the *Amazon S3 User Guide*. For a complete list of S3 Storage Lens
metrics, see [S3 Storage Lens metrics
glossary](https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens_metrics_glossary.html)
in the *Amazon S3 User Guide*.

To use this action, you must have permission to perform the
`s3:PutStorageLensConfiguration` action. For more information, see
[Setting permissions to use Amazon S3 Storage
Lens](https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens_iam_permissions.html)
in the *Amazon S3 User Guide*.

### Usage

    s3control_put_storage_lens_configuration(ConfigId, AccountId,
      StorageLensConfiguration, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="s3control_put_storage_lens_configuration_:_ConfigId">ConfigId</code></td>
<td><p>[required] The ID of the S3 Storage Lens configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="s3control_put_storage_lens_configuration_:_AccountId">AccountId</code></td>
<td><p>[required] The account ID of the requester.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3control_put_storage_lens_configuration_:_StorageLensConfiguration">StorageLensConfiguration</code></td>
<td><p>[required] The S3 Storage Lens configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="s3control_put_storage_lens_configuration_:_Tags">Tags</code></td>
<td><p>The tag set of the S3 Storage Lens configuration.</p>
<p>You can set up to a maximum of 50 tags.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_storage_lens_configuration(
      ConfigId = "string",
      AccountId = "string",
      StorageLensConfiguration = list(
        Id = "string",
        AccountLevel = list(
          ActivityMetrics = list(
            IsEnabled = TRUE|FALSE
          ),
          BucketLevel = list(
            ActivityMetrics = list(
              IsEnabled = TRUE|FALSE
            ),
            PrefixLevel = list(
              StorageMetrics = list(
                IsEnabled = TRUE|FALSE,
                SelectionCriteria = list(
                  Delimiter = "string",
                  MaxDepth = 123,
                  MinStorageBytesPercentage = 123.0
                )
              )
            ),
            AdvancedCostOptimizationMetrics = list(
              IsEnabled = TRUE|FALSE
            ),
            AdvancedDataProtectionMetrics = list(
              IsEnabled = TRUE|FALSE
            ),
            DetailedStatusCodesMetrics = list(
              IsEnabled = TRUE|FALSE
            )
          ),
          AdvancedCostOptimizationMetrics = list(
            IsEnabled = TRUE|FALSE
          ),
          AdvancedDataProtectionMetrics = list(
            IsEnabled = TRUE|FALSE
          ),
          DetailedStatusCodesMetrics = list(
            IsEnabled = TRUE|FALSE
          )
        ),
        Include = list(
          Buckets = list(
            "string"
          ),
          Regions = list(
            "string"
          )
        ),
        Exclude = list(
          Buckets = list(
            "string"
          ),
          Regions = list(
            "string"
          )
        ),
        DataExport = list(
          S3BucketDestination = list(
            Format = "CSV"|"Parquet",
            OutputSchemaVersion = "V_1",
            AccountId = "string",
            Arn = "string",
            Prefix = "string",
            Encryption = list(
              SSES3 = list(),
              SSEKMS = list(
                KeyId = "string"
              )
            )
          ),
          CloudWatchMetrics = list(
            IsEnabled = TRUE|FALSE
          )
        ),
        IsEnabled = TRUE|FALSE,
        AwsOrg = list(
          Arn = "string"
        ),
        StorageLensArn = "string"
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
