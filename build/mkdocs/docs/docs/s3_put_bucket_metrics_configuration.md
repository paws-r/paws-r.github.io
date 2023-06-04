<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_put_bucket_metrics_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets a metrics configuration (specified by the metrics configuration ID) for the bucket

### Description

Sets a metrics configuration (specified by the metrics configuration ID)
for the bucket. You can have up to 1,000 metrics configurations per
bucket. If you're updating an existing metrics configuration, note that
this is a full replacement of the existing metrics configuration. If you
don't include the elements you want to keep, they are erased.

To use this operation, you must have permissions to perform the
`s3:PutMetricsConfiguration` action. The bucket owner has this
permission by default. The bucket owner can grant this permission to
others. For more information about permissions, see [Permissions Related
to Bucket Subresource
Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and [Managing Access Permissions to Your Amazon S3
Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

For information about CloudWatch request metrics for Amazon S3, see
[Monitoring Metrics with Amazon
CloudWatch](https://docs.aws.amazon.com/AmazonS3/latest/userguide/cloudwatch-monitoring.html).

The following operations are related to
`put_bucket_metrics_configuration`:

-   `delete_bucket_metrics_configuration`

-   `get_bucket_metrics_configuration`

-   `list_bucket_metrics_configurations`

`get_bucket_lifecycle` has the following special error:

-   Error code: `TooManyConfigurations`

    -   Description: You are attempting to create a new configuration
        but have already reached the 1,000-configuration limit.

    -   HTTP Status Code: HTTP 400 Bad Request

### Usage

    s3_put_bucket_metrics_configuration(Bucket, Id, MetricsConfiguration,
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
id="s3_put_bucket_metrics_configuration_:_Bucket">Bucket</code></td>
<td><p>[required] The name of the bucket for which the metrics
configuration is set.</p></td>
</tr>
<tr class="even">
<td><code id="s3_put_bucket_metrics_configuration_:_Id">Id</code></td>
<td><p>[required] The ID used to identify the metrics configuration. The
ID has a 64 character limit and can only contain letters, numbers,
periods, dashes, and underscores.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_put_bucket_metrics_configuration_:_MetricsConfiguration">MetricsConfiguration</code></td>
<td><p>[required] Specifies the metrics configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_put_bucket_metrics_configuration_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
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

    svc$put_bucket_metrics_configuration(
      Bucket = "string",
      Id = "string",
      MetricsConfiguration = list(
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
      ),
      ExpectedBucketOwner = "string"
    )
