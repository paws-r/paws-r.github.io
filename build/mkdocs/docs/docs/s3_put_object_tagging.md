<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_put_object_tagging</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets the supplied tag-set to an object that already exists in a bucket

### Description

Sets the supplied tag-set to an object that already exists in a bucket.

A tag is a key-value pair. You can associate tags with an object by
sending a PUT request against the tagging subresource that is associated
with the object. You can retrieve tags by sending a GET request. For
more information, see `get_object_tagging`.

For tagging-related restrictions related to characters and encodings,
see [Tag
Restrictions](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html).
Note that Amazon S3 limits the maximum number of tags to 10 tags per
object.

To use this operation, you must have permission to perform the
`s3:PutObjectTagging` action. By default, the bucket owner has this
permission and can grant this permission to others.

To put tags of any other version, use the `versionId` query parameter.
You also need permission for the `s3:PutObjectVersionTagging` action.

For information about the Amazon S3 object tagging feature, see [Object
Tagging](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-tagging.html).

`put_object_tagging` has the following special errors:

-   -   *Code: InvalidTagError*

    -   *Cause: The tag provided was not a valid tag. This error can
        occur if the tag did not pass input validation. For more
        information, see
        <span href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-tagging.html">Object
        Tagging</span>.*

-   -   *Code: MalformedXMLError*

    -   *Cause: The XML provided does not match the schema.*

-   -   *Code: OperationAbortedError*

    -   *Cause: A conflicting conditional action is currently in
        progress against this resource. Please try again.*

-   -   *Code: InternalError*

    -   *Cause: The service was unable to apply the provided tag to the
        object.*

The following operations are related to `put_object_tagging`:

-   `get_object_tagging`

-   `delete_object_tagging`

### Usage

    s3_put_object_tagging(Bucket, Key, VersionId, ContentMD5,
      ChecksumAlgorithm, Tagging, ExpectedBucketOwner, RequestPayer)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_put_object_tagging_:_Bucket">Bucket</code></td>
<td><p>[required] The bucket name containing the object.</p>
<p>When using this action with an access point, you must direct requests
to the access point hostname. The access point hostname takes the form
<em>AccessPointName</em>-<em>AccountId</em>.s3-accesspoint.<em>Region</em>.amazonaws.com.
When using this action with an access point through the Amazon Web
Services SDKs, you provide the access point ARN in place of the bucket
name. For more information about access point ARNs, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using
access points</a> in the <em>Amazon S3 User Guide</em>.</p>
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
<td><code id="s3_put_object_tagging_:_Key">Key</code></td>
<td><p>[required] Name of the object key.</p></td>
</tr>
<tr class="odd">
<td><code id="s3_put_object_tagging_:_VersionId">VersionId</code></td>
<td><p>The versionId of the object that the tag-set will be added
to.</p></td>
</tr>
<tr class="even">
<td><code id="s3_put_object_tagging_:_ContentMD5">ContentMD5</code></td>
<td><p>The MD5 hash for the request body.</p>
<p>For requests made using the Amazon Web Services Command Line
Interface (CLI) or Amazon Web Services SDKs, this field is calculated
automatically.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_put_object_tagging_:_ChecksumAlgorithm">ChecksumAlgorithm</code></td>
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
<td><code id="s3_put_object_tagging_:_Tagging">Tagging</code></td>
<td><p>[required] Container for the <code>TagSet</code> and
<code>Tag</code> elements</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_put_object_tagging_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
<td><p>The account ID of the expected bucket owner. If the bucket is
owned by a different account, the request fails with the HTTP status
code <code style="white-space: pre;">⁠403 Forbidden⁠</code> (access
denied).</p></td>
</tr>
<tr class="even">
<td><code
id="s3_put_object_tagging_:_RequestPayer">RequestPayer</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      VersionId = "string"
    )

### Request syntax

    svc$put_object_tagging(
      Bucket = "string",
      Key = "string",
      VersionId = "string",
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
      ExpectedBucketOwner = "string",
      RequestPayer = "requester"
    )

### Examples

    ## Not run: 
    # The following example adds tags to an existing object.
    svc$put_object_tagging(
      Bucket = "examplebucket",
      Key = "HappyFace.jpg",
      Tagging = list(
        TagSet = list(
          list(
            Key = "Key3",
            Value = "Value3"
          ),
          list(
            Key = "Key4",
            Value = "Value4"
          )
        )
      )
    )

    ## End(Not run)
