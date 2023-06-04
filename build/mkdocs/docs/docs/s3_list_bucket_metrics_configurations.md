<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_list_bucket_metrics_configurations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the metrics configurations for the bucket

### Description

Lists the metrics configurations for the bucket. The metrics
configurations are only for the request metrics of the bucket and do not
provide information on daily storage metrics. You can have up to 1,000
configurations per bucket.

This action supports list pagination and does not return more than 100
configurations at a time. Always check the `IsTruncated` element in the
response. If there are no more configurations to list, `IsTruncated` is
set to false. If there are more configurations to list, `IsTruncated` is
set to true, and there is a value in `NextContinuationToken`. You use
the `NextContinuationToken` value to continue the pagination of the list
by passing the value in `continuation-token` in the request to `GET` the
next page.

To use this operation, you must have permissions to perform the
`s3:GetMetricsConfiguration` action. The bucket owner has this
permission by default. The bucket owner can grant this permission to
others. For more information about permissions, see [Permissions Related
to Bucket Subresource
Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and [Managing Access Permissions to Your Amazon S3
Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

For more information about metrics configurations and CloudWatch request
metrics, see [Monitoring Metrics with Amazon
CloudWatch](https://docs.aws.amazon.com/AmazonS3/latest/userguide/cloudwatch-monitoring.html).

The following operations are related to
`list_bucket_metrics_configurations`:

-   `put_bucket_metrics_configuration`

-   `get_bucket_metrics_configuration`

-   `delete_bucket_metrics_configuration`

### Usage

    s3_list_bucket_metrics_configurations(Bucket, ContinuationToken,
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
id="s3_list_bucket_metrics_configurations_:_Bucket">Bucket</code></td>
<td><p>[required] The name of the bucket containing the metrics
configurations to retrieve.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_list_bucket_metrics_configurations_:_ContinuationToken">ContinuationToken</code></td>
<td><p>The marker that is used to continue a metrics configuration
listing that has been truncated. Use the NextContinuationToken from a
previously truncated list response to continue the listing. The
continuation token is an opaque value that Amazon S3
understands.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_list_bucket_metrics_configurations_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
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
      MetricsConfigurationList = list(
        list(
          Id = "string",
          Filter = list(
            Prefix = "string",
            Tag = list(
              Key = "string",
              Value = "string"
            ),
            AccessPointArn = "string",
            And = list(
              Prefix = "string",
              Tags = list(
                list(
                  Key = "string",
                  Value = "string"
                )
              ),
              AccessPointArn = "string"
            )
          )
        )
      )
    )

### Request syntax

    svc$list_bucket_metrics_configurations(
      Bucket = "string",
      ContinuationToken = "string",
      ExpectedBucketOwner = "string"
    )
