<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_put_bucket_tagging</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets the tags for a bucket

### Description

Sets the tags for a bucket.

Use tags to organize your Amazon Web Services bill to reflect your own
cost structure. To do this, sign up to get your Amazon Web Services
account bill with tag key values included. Then, to see the cost of
combined resources, organize your billing information according to
resources with the same tag key values. For example, you can tag several
resources with a specific application name, and then organize your
billing information to see the total cost of that application across
several services. For more information, see [Cost Allocation and
Tagging](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html)
and [Using Cost Allocation in Amazon S3 Bucket
Tags](https://docs.aws.amazon.com/AmazonS3/latest/userguide/CostAllocTagging.html).

When this operation sets the tags for a bucket, it will overwrite any
current tags the bucket already has. You cannot use this operation to
add tags to an existing list of tags.

To use this operation, you must have permissions to perform the
`s3:PutBucketTagging` action. The bucket owner has this permission by
default and can grant this permission to others. For more information
about permissions, see [Permissions Related to Bucket Subresource
Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and [Managing Access Permissions to Your Amazon S3
Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

`put_bucket_tagging` has the following special errors:

-   Error code: `InvalidTagError`

    -   Description: The tag provided was not a valid tag. This error
        can occur if the tag did not pass input validation. For
        information about tag restrictions, see [User-Defined Tag
        Restrictions](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html)
        and [Amazon Web Services-Generated Cost Allocation Tag
        Restrictions](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/aws-tag-restrictions.html).

-   Error code: `MalformedXMLError`

    -   Description: The XML provided does not match the schema.

-   Error code: `OperationAbortedError `

    -   Description: A conflicting conditional action is currently in
        progress against this resource. Please try again.

-   Error code: `InternalError`

    -   Description: The service was unable to apply the provided tag to
        the bucket.

The following operations are related to `put_bucket_tagging`:

-   `get_bucket_tagging`

-   `delete_bucket_tagging`

### Usage

    s3_put_bucket_tagging(Bucket, ContentMD5, ChecksumAlgorithm, Tagging,
      ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_put_bucket_tagging_:_Bucket">Bucket</code></td>
<td><p>[required] The bucket name.</p></td>
</tr>
<tr class="even">
<td><code id="s3_put_bucket_tagging_:_ContentMD5">ContentMD5</code></td>
<td><p>The base64-encoded 128-bit MD5 digest of the data. You must use
this header as a message integrity check to verify that the request body
was not corrupted in transit. For more information, see <a
href="https://www.ietf.org/rfc/rfc1864.txt">RFC 1864</a>.</p>
<p>For requests made using the Amazon Web Services Command Line
Interface (CLI) or Amazon Web Services SDKs, this field is calculated
automatically.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_put_bucket_tagging_:_ChecksumAlgorithm">ChecksumAlgorithm</code></td>
<td><p>Indicates the algorithm used to create the checksum for the
object when using the SDK. This header will not provide any additional
functionality if not using the SDK. When sending this header, there must
be a corresponding <code>x-amz-checksum</code> or
<code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the
request with the HTTP status code <code
style="white-space: pre;">⁠400 Bad Request⁠</code>. For more information,
see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking
object integrity</a> in the <em>Amazon S3 User Guide</em>.</p>
<p>If you provide an individual checksum, Amazon S3 ignores any provided
<code>ChecksumAlgorithm</code> parameter.</p></td>
</tr>
<tr class="even">
<td><code id="s3_put_bucket_tagging_:_Tagging">Tagging</code></td>
<td><p>[required] Container for the <code>TagSet</code> and
<code>Tag</code> elements.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_put_bucket_tagging_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
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

    svc$put_bucket_tagging(
      Bucket = "string",
      ContentMD5 = "string",
      ChecksumAlgorithm = "CRC32"|"CRC32C"|"SHA1"|"SHA256",
      Tagging = list(
        TagSet = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      ),
      ExpectedBucketOwner = "string"
    )

### Examples

    ## Not run: 
    # The following example sets tags on a bucket. Any existing tags are
    # replaced.
    svc$put_bucket_tagging(
      Bucket = "examplebucket",
      Tagging = list(
        TagSet = list(
          list(
            Key = "Key1",
            Value = "Value1"
          ),
          list(
            Key = "Key2",
            Value = "Value2"
          )
        )
      )
    )

    ## End(Not run)
