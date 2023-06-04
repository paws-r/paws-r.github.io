<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_list_bucket_analytics_configurations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the analytics configurations for the bucket

### Description

Lists the analytics configurations for the bucket. You can have up to
1,000 analytics configurations per bucket.

This action supports list pagination and does not return more than 100
configurations at a time. You should always check the `IsTruncated`
element in the response. If there are no more configurations to list,
`IsTruncated` is set to false. If there are more configurations to list,
`IsTruncated` is set to true, and there will be a value in
`NextContinuationToken`. You use the `NextContinuationToken` value to
continue the pagination of the list by passing the value in
continuation-token in the request to `GET` the next page.

To use this operation, you must have permissions to perform the
`s3:GetAnalyticsConfiguration` action. The bucket owner has this
permission by default. The bucket owner can grant this permission to
others. For more information about permissions, see [Permissions Related
to Bucket Subresource
Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and [Managing Access Permissions to Your Amazon S3
Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

For information about Amazon S3 analytics feature, see [Amazon S3
Analytics – Storage Class
Analysis](https://docs.aws.amazon.com/AmazonS3/latest/userguide/analytics-storage-class.html).

The following operations are related to
`list_bucket_analytics_configurations`:

-   `get_bucket_analytics_configuration`

-   `delete_bucket_analytics_configuration`

-   `put_bucket_analytics_configuration`

### Usage

    s3_list_bucket_analytics_configurations(Bucket, ContinuationToken,
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
id="s3_list_bucket_analytics_configurations_:_Bucket">Bucket</code></td>
<td><p>[required] The name of the bucket from which analytics
configurations are retrieved.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_list_bucket_analytics_configurations_:_ContinuationToken">ContinuationToken</code></td>
<td><p>The ContinuationToken that represents a placeholder from where
this request should begin.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_list_bucket_analytics_configurations_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
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
      IsTruncated = TRUE|FALSE,
      ContinuationToken = "string",
      NextContinuationToken = "string",
      AnalyticsConfigurationList = list(
        list(
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
    )

### Request syntax

    svc$list_bucket_analytics_configurations(
      Bucket = "string",
      ContinuationToken = "string",
      ExpectedBucketOwner = "string"
    )
