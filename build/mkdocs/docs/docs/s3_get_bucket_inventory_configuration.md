<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_get_bucket_inventory_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns an inventory configuration (identified by the inventory configuration ID) from the bucket

### Description

Returns an inventory configuration (identified by the inventory
configuration ID) from the bucket.

To use this operation, you must have permissions to perform the
`s3:GetInventoryConfiguration` action. The bucket owner has this
permission by default and can grant this permission to others. For more
information about permissions, see [Permissions Related to Bucket
Subresource
Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and [Managing Access Permissions to Your Amazon S3
Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

For information about the Amazon S3 inventory feature, see [Amazon S3
Inventory](https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage-inventory.html).

The following operations are related to
`get_bucket_inventory_configuration`:

-   `delete_bucket_inventory_configuration`

-   `list_bucket_inventory_configurations`

-   `put_bucket_inventory_configuration`

### Usage

    s3_get_bucket_inventory_configuration(Bucket, Id, ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="s3_get_bucket_inventory_configuration_:_Bucket">Bucket</code></td>
<td><p>[required] The name of the bucket containing the inventory
configuration to retrieve.</p></td>
</tr>
<tr class="even">
<td><code id="s3_get_bucket_inventory_configuration_:_Id">Id</code></td>
<td><p>[required] The ID used to identify the inventory
configuration.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_get_bucket_inventory_configuration_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
<td><p>The account ID of the expected bucket owner. If the bucket is
owned by a different account, the request fails with the HTTP status
code <code style="white-space: pre;">⁠403 Forbidden⁠</code> (access
denied).</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      InventoryConfiguration = list(
        Destination = list(
          S3BucketDestination = list(
            AccountId = "string",
            Bucket = "string",
            Format = "CSV"|"ORC"|"Parquet",
            Prefix = "string",
            Encryption = list(
              SSES3 = list(),
              SSEKMS = list(
                KeyId = "string"
              )
            )
          )
        ),
        IsEnabled = TRUE|FALSE,
        Filter = list(
          Prefix = "string"
        ),
        Id = "string",
        IncludedObjectVersions = "All"|"Current",
        OptionalFields = list(
          "Size"|"LastModifiedDate"|"StorageClass"|"ETag"|"IsMultipartUploaded"|"ReplicationStatus"|"EncryptionStatus"|"ObjectLockRetainUntilDate"|"ObjectLockMode"|"ObjectLockLegalHoldStatus"|"IntelligentTieringAccessTier"|"BucketKeyStatus"|"ChecksumAlgorithm"
        ),
        Schedule = list(
          Frequency = "Daily"|"Weekly"
        )
      )
    )

### Request syntax

    svc$get_bucket_inventory_configuration(
      Bucket = "string",
      Id = "string",
      ExpectedBucketOwner = "string"
    )
