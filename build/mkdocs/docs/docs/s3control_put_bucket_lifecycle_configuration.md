<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3control_put_bucket_lifecycle_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This action puts a lifecycle configuration to an Amazon S3 on Outposts bucket

### Description

This action puts a lifecycle configuration to an Amazon S3 on Outposts
bucket. To put a lifecycle configuration to an S3 bucket, see
`put_bucket_lifecycle_configuration` in the *Amazon S3 API Reference*.

Creates a new lifecycle configuration for the S3 on Outposts bucket or
replaces an existing lifecycle configuration. Outposts buckets only
support lifecycle configurations that delete/expire objects after a
certain period of time and abort incomplete multipart uploads.

All Amazon S3 on Outposts REST API requests for this action require an
additional parameter of `x-amz-outpost-id` to be passed with the
request. In addition, you must use an S3 on Outposts endpoint hostname
prefix instead of `s3-control`. For an example of the request syntax for
Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname
prefix and the `x-amz-outpost-id` derived by using the access point ARN,
see the
[Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketLifecycleConfiguration.html#API_control_PutBucketLifecycleConfiguration_Examples)
section.

The following actions are related to
`put_bucket_lifecycle_configuration`:

-   `get_bucket_lifecycle_configuration`

-   `delete_bucket_lifecycle_configuration`

### Usage

    s3control_put_bucket_lifecycle_configuration(AccountId, Bucket,
      LifecycleConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="s3control_put_bucket_lifecycle_configuration_:_AccountId">AccountId</code></td>
<td><p>[required] The Amazon Web Services account ID of the Outposts
bucket.</p></td>
</tr>
<tr class="even">
<td><code
id="s3control_put_bucket_lifecycle_configuration_:_Bucket">Bucket</code></td>
<td><p>[required] The name of the bucket for which to set the
configuration.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3control_put_bucket_lifecycle_configuration_:_LifecycleConfiguration">LifecycleConfiguration</code></td>
<td><p>Container for lifecycle rules. You can add as many as 1,000
rules.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_bucket_lifecycle_configuration(
      AccountId = "string",
      Bucket = "string",
      LifecycleConfiguration = list(
        Rules = list(
          list(
            Expiration = list(
              Date = as.POSIXct(
                "2015-01-01"
              ),
              Days = 123,
              ExpiredObjectDeleteMarker = TRUE|FALSE
            ),
            ID = "string",
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
                ),
                ObjectSizeGreaterThan = 123,
                ObjectSizeLessThan = 123
              ),
              ObjectSizeGreaterThan = 123,
              ObjectSizeLessThan = 123
            ),
            Status = "Enabled"|"Disabled",
            Transitions = list(
              list(
                Date = as.POSIXct(
                  "2015-01-01"
                ),
                Days = 123,
                StorageClass = "GLACIER"|"STANDARD_IA"|"ONEZONE_IA"|"INTELLIGENT_TIERING"|"DEEP_ARCHIVE"
              )
            ),
            NoncurrentVersionTransitions = list(
              list(
                NoncurrentDays = 123,
                StorageClass = "GLACIER"|"STANDARD_IA"|"ONEZONE_IA"|"INTELLIGENT_TIERING"|"DEEP_ARCHIVE"
              )
            ),
            NoncurrentVersionExpiration = list(
              NoncurrentDays = 123,
              NewerNoncurrentVersions = 123
            ),
            AbortIncompleteMultipartUpload = list(
              DaysAfterInitiation = 123
            )
          )
        )
      )
    )
