<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_head_bucket</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This action is useful to determine if a bucket exists and you have permission to access it

### Description

This action is useful to determine if a bucket exists and you have
permission to access it. The action returns a `⁠200 OK⁠` if the bucket
exists and you have permission to access it.

If the bucket does not exist or you do not have permission to access it,
the `HEAD` request returns a generic `⁠400 Bad Request⁠`, `⁠403 Forbidden⁠`
or `⁠404 Not Found⁠` code. A message body is not included, so you cannot
determine the exception beyond these error codes.

To use this operation, you must have permissions to perform the
`s3:ListBucket` action. The bucket owner has this permission by default
and can grant this permission to others. For more information about
permissions, see [Permissions Related to Bucket Subresource
Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and [Managing Access Permissions to Your Amazon S3
Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

To use this API operation against an access point, you must provide the
alias of the access point in place of the bucket name or specify the
access point ARN. When using the access point ARN, you must direct
requests to the access point hostname. The access point hostname takes
the form
*AccessPointName*-*AccountId*.s3-accesspoint.*Region*.amazonaws.com.
When using the Amazon Web Services SDKs, you provide the ARN in place of
the bucket name. For more information, see [Using access
points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html).

To use this API operation against an Object Lambda access point, provide
the alias of the Object Lambda access point in place of the bucket name.
If the Object Lambda access point alias in a request is not valid, the
error code `InvalidAccessPointAliasError` is returned. For more
information about `InvalidAccessPointAliasError`, see [List of Error
Codes](https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#ErrorCodeList).

### Usage

    s3_head_bucket(Bucket, ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_head_bucket_:_Bucket">Bucket</code></td>
<td><p>[required] The bucket name.</p>
<p>When using this action with an access point, you must direct requests
to the access point hostname. The access point hostname takes the form
<em>AccessPointName</em>-<em>AccountId</em>.s3-accesspoint.<em>Region</em>.amazonaws.com.
When using this action with an access point through the Amazon Web
Services SDKs, you provide the access point ARN in place of the bucket
name. For more information about access point ARNs, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using
access points</a> in the <em>Amazon S3 User Guide</em>.</p>
<p>When you use this action with an Object Lambda access point, provide
the alias of the Object Lambda access point in place of the bucket name.
If the Object Lambda access point alias in a request is not valid, the
error code <code>InvalidAccessPointAliasError</code> is returned. For
more information about <code>InvalidAccessPointAliasError</code>, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#ErrorCodeList">List
of Error Codes</a>.</p>
<p>When you use this action with Amazon S3 on Outposts, you must direct
requests to the S3 on Outposts hostname. The S3 on Outposts hostname
takes the form
<code> AccessPointName-AccountId.outpostID.s3-outposts.Region.amazonaws.com</code>.
When you use this action with S3 on Outposts through the Amazon Web
Services SDKs, you provide the Outposts access point ARN in place of the
bucket name. For more information about S3 on Outposts ARNs, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What
is S3 on Outposts</a> in the <em>Amazon S3 User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_head_bucket_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
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

    svc$head_bucket(
      Bucket = "string",
      ExpectedBucketOwner = "string"
    )

### Examples

    ## Not run: 
    # This operation checks to see if a bucket exists.
    svc$head_bucket(
      Bucket = "acl1"
    )

    ## End(Not run)
