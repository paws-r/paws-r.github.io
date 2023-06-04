<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_list_bucket_inventory_configurations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of inventory configurations for the bucket

### Description

Returns a list of inventory configurations for the bucket. You can have
up to 1,000 analytics configurations per bucket.

This action supports list pagination and does not return more than 100
configurations at a time. Always check the `IsTruncated` element in the
response. If there are no more configurations to list, `IsTruncated` is
set to false. If there are more configurations to list, `IsTruncated` is
set to true, and there is a value in `NextContinuationToken`. You use
the `NextContinuationToken` value to continue the pagination of the list
by passing the value in continuation-token in the request to `GET` the
next page.

To use this operation, you must have permissions to perform the
`s3:GetInventoryConfiguration` action. The bucket owner has this
permission by default. The bucket owner can grant this permission to
others. For more information about permissions, see [Permissions Related
to Bucket Subresource
Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and [Managing Access Permissions to Your Amazon S3
Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

For information about the Amazon S3 inventory feature, see [Amazon S3
Inventory](https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage-inventory.html)

The following operations are related to
`list_bucket_inventory_configurations`:

-   `get_bucket_inventory_configuration`

-   `delete_bucket_inventory_configuration`

-   `put_bucket_inventory_configuration`

### Usage

    s3_list_bucket_inventory_configurations(Bucket, ContinuationToken,
      ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="s3_list_bucket_inventory_configurations_:_Bucket">Bucket</code></td>
<td><p>[required] The name of the bucket containing the inventory
configurations to retrieve.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_list_bucket_inventory_configurations_:_ContinuationToken">ContinuationToken</code></td>
<td><p>The marker used to continue an inventory configuration listing
that has been truncated. Use the NextContinuationToken from a previously
truncated list response to continue the listing. The continuation token
is an opaque value that Amazon S3 understands.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_list_bucket_inventory_configurations_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
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
      ContinuationToken = "string",
      InventoryConfigurationList = list(
        list(
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
      ),
      IsTruncated = TRUE|FALSE,
      NextContinuationToken = "string"
    )

### Request syntax

    svc$list_bucket_inventory_configurations(
      Bucket = "string",
      ContinuationToken = "string",
      ExpectedBucketOwner = "string"
    )
