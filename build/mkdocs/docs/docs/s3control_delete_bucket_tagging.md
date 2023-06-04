<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3control_delete_bucket_tagging</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This action deletes an Amazon S3 on Outposts bucket's tags

### Description

This action deletes an Amazon S3 on Outposts bucket's tags. To delete an
S3 bucket tags, see `delete_bucket_tagging` in the *Amazon S3 API
Reference*.

Deletes the tags from the Outposts bucket. For more information, see
[Using Amazon S3 on
Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html)
in *Amazon S3 User Guide*.

To use this action, you must have permission to perform the
`put_bucket_tagging` action. By default, the bucket owner has this
permission and can grant this permission to others.

All Amazon S3 on Outposts REST API requests for this action require an
additional parameter of `x-amz-outpost-id` to be passed with the
request. In addition, you must use an S3 on Outposts endpoint hostname
prefix instead of `s3-control`. For an example of the request syntax for
Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname
prefix and the `x-amz-outpost-id` derived by using the access point ARN,
see the
[Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketTagging.html#API_control_DeleteBucketTagging_Examples)
section.

The following actions are related to `delete_bucket_tagging`:

-   `get_bucket_tagging`

-   `put_bucket_tagging`

### Usage

    s3control_delete_bucket_tagging(AccountId, Bucket)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="s3control_delete_bucket_tagging_:_AccountId">AccountId</code></td>
<td><p>[required] The Amazon Web Services account ID of the Outposts
bucket tag set to be removed.</p></td>
</tr>
<tr class="even">
<td><code
id="s3control_delete_bucket_tagging_:_Bucket">Bucket</code></td>
<td><p>[required] The bucket ARN that has the tag set to be removed.</p>
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

An empty list.

### Request syntax

    svc$delete_bucket_tagging(
      AccountId = "string",
      Bucket = "string"
    )
