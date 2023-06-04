<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3control_get_bucket</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets an Amazon S3 on Outposts bucket

### Description

Gets an Amazon S3 on Outposts bucket. For more information, see [Using
Amazon S3 on
Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html)
in the *Amazon S3 User Guide*.

If you are using an identity other than the root user of the Amazon Web
Services account that owns the Outposts bucket, the calling identity
must have the `s3-outposts:GetBucket` permissions on the specified
Outposts bucket and belong to the Outposts bucket owner's account in
order to use this action. Only users from Outposts bucket owner account
with the right permissions can perform actions on an Outposts bucket.

If you don't have `s3-outposts:GetBucket` permissions or you're not
using an identity that belongs to the bucket owner's account, Amazon S3
returns a `⁠403 Access Denied⁠` error.

The following actions are related to `get_bucket` for Amazon S3 on
Outposts:

All Amazon S3 on Outposts REST API requests for this action require an
additional parameter of `x-amz-outpost-id` to be passed with the
request. In addition, you must use an S3 on Outposts endpoint hostname
prefix instead of `s3-control`. For an example of the request syntax for
Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname
prefix and the `x-amz-outpost-id` derived by using the access point ARN,
see the
[Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucket.html#API_control_GetBucket_Examples)
section.

-   [PutObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html)

-   `create_bucket`

-   `delete_bucket`

### Usage

    s3control_get_bucket(AccountId, Bucket)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3control_get_bucket_:_AccountId">AccountId</code></td>
<td><p>[required] The Amazon Web Services account ID of the Outposts
bucket.</p></td>
</tr>
<tr class="even">
<td><code id="s3control_get_bucket_:_Bucket">Bucket</code></td>
<td><p>[required] Specifies the bucket.</p>
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
      Bucket = "string",
      PublicAccessBlockEnabled = TRUE|FALSE,
      CreationDate = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$get_bucket(
      AccountId = "string",
      Bucket = "string"
    )
