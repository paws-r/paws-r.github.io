<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_put_bucket_inventory_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This implementation of the PUT action adds an inventory configuration (identified by the inventory ID) to the bucket

### Description

This implementation of the `PUT` action adds an inventory configuration
(identified by the inventory ID) to the bucket. You can have up to 1,000
inventory configurations per bucket.

Amazon S3 inventory generates inventories of the objects in the bucket
on a daily or weekly basis, and the results are published to a flat
file. The bucket that is inventoried is called the *source* bucket, and
the bucket where the inventory flat file is stored is called the
*destination* bucket. The *destination* bucket must be in the same
Amazon Web Services Region as the *source* bucket.

When you configure an inventory for a *source* bucket, you specify the
*destination* bucket where you want the inventory to be stored, and
whether to generate the inventory daily or weekly. You can also
configure what object metadata to include and whether to inventory all
object versions or only current versions. For more information, see
[Amazon S3
Inventory](https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage-inventory.html)
in the Amazon S3 User Guide.

You must create a bucket policy on the *destination* bucket to grant
permissions to Amazon S3 to write objects to the bucket in the defined
location. For an example policy, see [Granting Permissions for Amazon S3
Inventory and Storage Class
Analysis](https://docs.aws.amazon.com/AmazonS3/latest/userguide/example-bucket-policies.html#example-bucket-policies-use-case-9).

#### Permissions

To use this operation, you must have permission to perform the
`s3:PutInventoryConfiguration` action. The bucket owner has this
permission by default and can grant this permission to others.

The `s3:PutInventoryConfiguration` permission allows a user to create an
[S3
Inventory](https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage-inventory.html)
report that includes all object metadata fields available and to specify
the destination bucket to store the inventory. A user with read access
to objects in the destination bucket can also access all object metadata
fields that are available in the inventory report.

To restrict access to an inventory report, see [Restricting access to an
Amazon S3 Inventory
report](https://docs.aws.amazon.com/AmazonS3/latest/userguide/example-bucket-policies.html#example-bucket-policies-use-case-10)
in the *Amazon S3 User Guide*. For more information about the metadata
fields available in S3 Inventory, see [Amazon S3 Inventory
lists](https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage-inventory.html#storage-inventory-contents)
in the *Amazon S3 User Guide*. For more information about permissions,
see [Permissions related to bucket subresource
operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and [Identity and access management in Amazon
S3](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html)
in the *Amazon S3 User Guide*.

`put_bucket_inventory_configuration` has the following special errors:

#### HTTP 400 Bad Request Error

*Code:* InvalidArgument

*Cause:* Invalid Argument

#### HTTP 400 Bad Request Error

*Code:* TooManyConfigurations

*Cause:* You are attempting to create a new configuration but have
already reached the 1,000-configuration limit.

#### HTTP 403 Forbidden Error

*Cause:* You are not the owner of the specified bucket, or you do not
have the `s3:PutInventoryConfiguration` bucket permission to set the
configuration on the bucket.

The following operations are related to
`put_bucket_inventory_configuration`:

-   `get_bucket_inventory_configuration`

-   `delete_bucket_inventory_configuration`

-   `list_bucket_inventory_configurations`

### Usage

    s3_put_bucket_inventory_configuration(Bucket, Id,
      InventoryConfiguration, ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="s3_put_bucket_inventory_configuration_:_Bucket">Bucket</code></td>
<td><p>[required] The name of the bucket where the inventory
configuration will be stored.</p></td>
</tr>
<tr class="even">
<td><code id="s3_put_bucket_inventory_configuration_:_Id">Id</code></td>
<td><p>[required] The ID used to identify the inventory
configuration.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_put_bucket_inventory_configuration_:_InventoryConfiguration">InventoryConfiguration</code></td>
<td><p>[required] Specifies the inventory configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_put_bucket_inventory_configuration_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
<td><p>The account ID of the expected bucket owner. If the bucket is
owned by a different account, the request fails with the HTTP status
code <code style="white-space: pre;">⁠403 Forbidden⁠</code> (access
denied).</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_bucket_inventory_configuration(
      Bucket = "string",
      Id = "string",
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
      ),
      ExpectedBucketOwner = "string"
    )
