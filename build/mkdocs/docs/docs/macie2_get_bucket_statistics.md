<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_get_bucket_statistics</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves (queries) aggregated statistical data about all the S3 buckets that Amazon Macie monitors and analyzes for an account

### Description

Retrieves (queries) aggregated statistical data about all the S3 buckets
that Amazon Macie monitors and analyzes for an account.

### Usage

    macie2_get_bucket_statistics(accountId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="macie2_get_bucket_statistics_:_accountId">accountId</code></td>
<td><p>The unique identifier for the Amazon Web Services
account.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      bucketCount = 123,
      bucketCountByEffectivePermission = list(
        publiclyAccessible = 123,
        publiclyReadable = 123,
        publiclyWritable = 123,
        unknown = 123
      ),
      bucketCountByEncryptionType = list(
        kmsManaged = 123,
        s3Managed = 123,
        unencrypted = 123,
        unknown = 123
      ),
      bucketCountByObjectEncryptionRequirement = list(
        allowsUnencryptedObjectUploads = 123,
        deniesUnencryptedObjectUploads = 123,
        unknown = 123
      ),
      bucketCountBySharedAccessType = list(
        external = 123,
        internal = 123,
        notShared = 123,
        unknown = 123
      ),
      bucketStatisticsBySensitivity = list(
        classificationError = list(
          classifiableSizeInBytes = 123,
          publiclyAccessibleCount = 123,
          totalCount = 123,
          totalSizeInBytes = 123
        ),
        notClassified = list(
          classifiableSizeInBytes = 123,
          publiclyAccessibleCount = 123,
          totalCount = 123,
          totalSizeInBytes = 123
        ),
        notSensitive = list(
          classifiableSizeInBytes = 123,
          publiclyAccessibleCount = 123,
          totalCount = 123,
          totalSizeInBytes = 123
        ),
        sensitive = list(
          classifiableSizeInBytes = 123,
          publiclyAccessibleCount = 123,
          totalCount = 123,
          totalSizeInBytes = 123
        )
      ),
      classifiableObjectCount = 123,
      classifiableSizeInBytes = 123,
      lastUpdated = as.POSIXct(
        "2015-01-01"
      ),
      objectCount = 123,
      sizeInBytes = 123,
      sizeInBytesCompressed = 123,
      unclassifiableObjectCount = list(
        fileType = 123,
        storageClass = 123,
        total = 123
      ),
      unclassifiableObjectSizeInBytes = list(
        fileType = 123,
        storageClass = 123,
        total = 123
      )
    )

### Request syntax

    svc$get_bucket_statistics(
      accountId = "string"
    )
