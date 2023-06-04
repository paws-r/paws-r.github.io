<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_put_bucket_analytics_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets an analytics configuration for the bucket (specified by the analytics configuration ID)

### Description

Sets an analytics configuration for the bucket (specified by the
analytics configuration ID). You can have up to 1,000 analytics
configurations per bucket.

You can choose to have storage class analysis export analysis reports
sent to a comma-separated values (CSV) flat file. See the `DataExport`
request element. Reports are updated daily and are based on the object
filters that you configure. When selecting data export, you specify a
destination bucket and an optional destination prefix where the file is
written. You can export the data to a destination bucket in a different
account. However, the destination bucket must be in the same Region as
the bucket that you are making the PUT analytics configuration to. For
more information, see [Amazon S3 Analytics – Storage Class
Analysis](https://docs.aws.amazon.com/AmazonS3/latest/userguide/analytics-storage-class.html).

You must create a bucket policy on the destination bucket where the
exported file is written to grant permissions to Amazon S3 to write
objects to the bucket. For an example policy, see [Granting Permissions
for Amazon S3 Inventory and Storage Class
Analysis](https://docs.aws.amazon.com/AmazonS3/latest/userguide/example-bucket-policies.html#example-bucket-policies-use-case-9).

To use this operation, you must have permissions to perform the
`s3:PutAnalyticsConfiguration` action. The bucket owner has this
permission by default. The bucket owner can grant this permission to
others. For more information about permissions, see [Permissions Related
to Bucket Subresource
Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and [Managing Access Permissions to Your Amazon S3
Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

`put_bucket_analytics_configuration` has the following special errors:

-   -   *HTTP Error: HTTP 400 Bad Request*

    -   *Code: InvalidArgument*

    -   *Cause: Invalid argument.*

-   -   *HTTP Error: HTTP 400 Bad Request*

    -   *Code: TooManyConfigurations*

    -   *Cause: You are attempting to create a new configuration but
        have already reached the 1,000-configuration limit.*

-   -   *HTTP Error: HTTP 403 Forbidden*

    -   *Code: AccessDenied*

    -   *Cause: You are not the owner of the specified bucket, or you do
        not have the s3:PutAnalyticsConfiguration bucket permission to
        set the configuration on the bucket.*

The following operations are related to
`put_bucket_analytics_configuration`:

-   `get_bucket_analytics_configuration`

-   `delete_bucket_analytics_configuration`

-   `list_bucket_analytics_configurations`

### Usage

    s3_put_bucket_analytics_configuration(Bucket, Id,
      AnalyticsConfiguration, ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="s3_put_bucket_analytics_configuration_:_Bucket">Bucket</code></td>
<td><p>[required] The name of the bucket to which an analytics
configuration is stored.</p></td>
</tr>
<tr class="even">
<td><code id="s3_put_bucket_analytics_configuration_:_Id">Id</code></td>
<td><p>[required] The ID that identifies the analytics
configuration.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_put_bucket_analytics_configuration_:_AnalyticsConfiguration">AnalyticsConfiguration</code></td>
<td><p>[required] The configuration and any analyses for the analytics
filter.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_put_bucket_analytics_configuration_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
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

    svc$put_bucket_analytics_configuration(
      Bucket = "string",
      Id = "string",
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
      ),
      ExpectedBucketOwner = "string"
    )
