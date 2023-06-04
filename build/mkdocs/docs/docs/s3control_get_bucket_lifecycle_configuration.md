<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3control_get_bucket_lifecycle_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This action gets an Amazon S3 on Outposts bucket's lifecycle configuration

### Description

This action gets an Amazon S3 on Outposts bucket's lifecycle
configuration. To get an S3 bucket's lifecycle configuration, see
`get_bucket_lifecycle_configuration` in the *Amazon S3 API Reference*.

Returns the lifecycle configuration information set on the Outposts
bucket. For more information, see [Using Amazon S3 on
Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html)
and for information about lifecycle configuration, see [Object Lifecycle
Management](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lifecycle-mgmt.html)
in *Amazon S3 User Guide*.

To use this action, you must have permission to perform the
`s3-outposts:GetLifecycleConfiguration` action. The Outposts bucket
owner has this permission, by default. The bucket owner can grant this
permission to others. For more information about permissions, see
[Permissions Related to Bucket Subresource
Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and [Managing Access Permissions to Your Amazon S3
Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

All Amazon S3 on Outposts REST API requests for this action require an
additional parameter of `x-amz-outpost-id` to be passed with the
request. In addition, you must use an S3 on Outposts endpoint hostname
prefix instead of `s3-control`. For an example of the request syntax for
Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname
prefix and the `x-amz-outpost-id` derived by using the access point ARN,
see the
[Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketLifecycleConfiguration.html#API_control_GetBucketLifecycleConfiguration_Examples)
section.

`get_bucket_lifecycle_configuration` has the following special error:

-   Error code: `NoSuchLifecycleConfiguration`

    -   Description: The lifecycle configuration does not exist.

    -   HTTP Status Code: 404 Not Found

    -   SOAP Fault Code Prefix: Client

The following actions are related to
`get_bucket_lifecycle_configuration`:

-   `put_bucket_lifecycle_configuration`

-   `delete_bucket_lifecycle_configuration`

### Usage

    s3control_get_bucket_lifecycle_configuration(AccountId, Bucket)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="s3control_get_bucket_lifecycle_configuration_:_AccountId">AccountId</code></td>
<td><p>[required] The Amazon Web Services account ID of the Outposts
bucket.</p></td>
</tr>
<tr class="even">
<td><code
id="s3control_get_bucket_lifecycle_configuration_:_Bucket">Bucket</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the bucket.</p>
<p>For using this parameter with Amazon S3 on Outposts with the REST
API, you must specify the name and the x-amz-outpost-id as well.</p>
<p>For using this parameter with S3 on Outposts with the Amazon Web
Services SDK and CLI, you must specify the ARN of the bucket accessed in
the format <code
style="white-space: pre;">⁠arn:aws:s3-outposts:&lt;Region&gt;:&lt;account-id&gt;:outpost/&lt;outpost-id&gt;/bucket/&lt;my-bucket-name&gt;⁠</code>.
For example, to access the bucket <code>reports</code> through Outpost
<code>my-outpost</code> owned by account <code>123456789012</code> in
Region <code>us-west-2</code>, use the URL encoding of
<code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>.
The value must be URL encoded.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
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

### Request syntax

    svc$get_bucket_lifecycle_configuration(
      AccountId = "string",
      Bucket = "string"
    )
