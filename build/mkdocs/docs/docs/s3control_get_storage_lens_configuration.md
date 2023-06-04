<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3control_get_storage_lens_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the Amazon S3 Storage Lens configuration

### Description

Gets the Amazon S3 Storage Lens configuration. For more information, see
[Assessing your storage activity and usage with Amazon S3 Storage
Lens](https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens.html)
in the *Amazon S3 User Guide*. For a complete list of S3 Storage Lens
metrics, see [S3 Storage Lens metrics
glossary](https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens_metrics_glossary.html)
in the *Amazon S3 User Guide*.

To use this action, you must have permission to perform the
`s3:GetStorageLensConfiguration` action. For more information, see
[Setting permissions to use Amazon S3 Storage
Lens](https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens_iam_permissions.html)
in the *Amazon S3 User Guide*.

### Usage

    s3control_get_storage_lens_configuration(ConfigId, AccountId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="s3control_get_storage_lens_configuration_:_ConfigId">ConfigId</code></td>
<td><p>[required] The ID of the Amazon S3 Storage Lens
configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="s3control_get_storage_lens_configuration_:_AccountId">AccountId</code></td>
<td><p>[required] The account ID of the requester.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
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
      )
    )

### Request syntax

    svc$get_storage_lens_configuration(
      ConfigId = "string",
      AccountId = "string"
    )
