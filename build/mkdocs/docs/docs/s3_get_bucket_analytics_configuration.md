<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_get_bucket_analytics_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This implementation of the GET action returns an analytics configuration (identified by the analytics configuration ID) from the bucket

### Description

This implementation of the GET action returns an analytics configuration
(identified by the analytics configuration ID) from the bucket.

To use this operation, you must have permissions to perform the
`s3:GetAnalyticsConfiguration` action. The bucket owner has this
permission by default. The bucket owner can grant this permission to
others. For more information about permissions, see [Permissions Related
to Bucket Subresource
Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and [Managing Access Permissions to Your Amazon S3
Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html)
in the *Amazon S3 User Guide*.

For information about Amazon S3 analytics feature, see [Amazon S3
Analytics – Storage Class
Analysis](https://docs.aws.amazon.com/AmazonS3/latest/userguide/analytics-storage-class.html)
in the *Amazon S3 User Guide*.

The following operations are related to
`get_bucket_analytics_configuration`:

-   `delete_bucket_analytics_configuration`

-   `list_bucket_analytics_configurations`

-   `put_bucket_analytics_configuration`

### Usage

    s3_get_bucket_analytics_configuration(Bucket, Id, ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="s3_get_bucket_analytics_configuration_:_Bucket">Bucket</code></td>
<td><p>[required] The name of the bucket from which an analytics
configuration is retrieved.</p></td>
</tr>
<tr class="even">
<td><code id="s3_get_bucket_analytics_configuration_:_Id">Id</code></td>
<td><p>[required] The ID that identifies the analytics
configuration.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_get_bucket_analytics_configuration_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
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
      AnalyticsConfiguration = list(
        Id = "string",
        Filter = list(
          Prefix = "string",
          Tag = list(
            Key = "string",
            Value = "string"
          ),
          And = list(
            Prefix = "string",
            Tags = list(
              list(
                Key = "string",
                Value = "string"
              )
            )
          )
        ),
        StorageClassAnalysis = list(
          DataExport = list(
            OutputSchemaVersion = "V_1",
            Destination = list(
              S3BucketDestination = list(
                Format = "CSV",
                BucketAccountId = "string",
                Bucket = "string",
                Prefix = "string"
              )
            )
          )
        )
      )
    )

### Request syntax

    svc$get_bucket_analytics_configuration(
      Bucket = "string",
      Id = "string",
      ExpectedBucketOwner = "string"
    )
