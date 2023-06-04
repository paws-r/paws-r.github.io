<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_upload_part_copy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Uploads a part by copying data from an existing object as data source

### Description

Uploads a part by copying data from an existing object as data source.
You specify the data source by adding the request header
`x-amz-copy-source` in your request and a byte range by adding the
request header `x-amz-copy-source-range` in your request.

For information about maximum and minimum part sizes and other multipart
upload specifications, see [Multipart upload
limits](https://docs.aws.amazon.com/AmazonS3/latest/userguide/qfacts.html)
in the *Amazon S3 User Guide*.

Instead of using an existing object as part data, you might use the
`upload_part` action and provide data in your request.

You must initiate a multipart upload before you can upload any part. In
response to your initiate request. Amazon S3 returns a unique
identifier, the upload ID, that you must include in your upload part
request.

For more information about using the `upload_part_copy` operation, see
the following:

-   For conceptual information about multipart uploads, see [Uploading
    Objects Using Multipart
    Upload](https://docs.aws.amazon.com/AmazonS3/latest/userguide/mpuoverview.html)
    in the *Amazon S3 User Guide*.

-   For information about permissions required to use the multipart
    upload API, see [Multipart Upload and
    Permissions](https://docs.aws.amazon.com/AmazonS3/latest/userguide/mpuoverview.html)
    in the *Amazon S3 User Guide*.

-   For information about copying objects using a single atomic action
    vs. a multipart upload, see [Operations on
    Objects](https://docs.aws.amazon.com/AmazonS3/latest/userguide/uploading-downloading-objects.html)
    in the *Amazon S3 User Guide*.

-   For information about using server-side encryption with
    customer-provided encryption keys with the `upload_part_copy`
    operation, see `copy_object` and `upload_part`.

Note the following additional considerations about the request headers
`⁠x-amz-copy-source-if-match⁠`, `⁠x-amz-copy-source-if-none-match⁠`,
`⁠x-amz-copy-source-if-unmodified-since⁠`, and
`⁠x-amz-copy-source-if-modified-since⁠`:

-   **Consideration 1** - If both of the `⁠x-amz-copy-source-if-match⁠`
    and `⁠x-amz-copy-source-if-unmodified-since⁠` headers are present in
    the request as follows:

    `⁠x-amz-copy-source-if-match⁠` condition evaluates to `true`, and;

    `⁠x-amz-copy-source-if-unmodified-since⁠` condition evaluates to
    `false`;

    Amazon S3 returns `⁠200 OK⁠` and copies the data.

-   **Consideration 2** - If both of the
    `⁠x-amz-copy-source-if-none-match⁠` and
    `⁠x-amz-copy-source-if-modified-since⁠` headers are present in the
    request as follows:

    `⁠x-amz-copy-source-if-none-match⁠` condition evaluates to `false`,
    and;

    `⁠x-amz-copy-source-if-modified-since⁠` condition evaluates to `true`;

    Amazon S3 returns `⁠412 Precondition Failed⁠` response code.

#### Versioning

If your bucket has versioning enabled, you could have multiple versions
of the same object. By default, `x-amz-copy-source` identifies the
current version of the object to copy. If the current version is a
delete marker and you don't specify a versionId in the
`x-amz-copy-source`, Amazon S3 returns a 404 error, because the object
does not exist. If you specify versionId in the `x-amz-copy-source` and
the versionId is a delete marker, Amazon S3 returns an HTTP 400 error,
because you are not allowed to specify a delete marker as a version for
the `x-amz-copy-source`.

You can optionally specify a specific version of the source object to
copy by adding the `versionId` subresource as shown in the following
example:

`⁠x-amz-copy-source: /bucket/object?versionId=version id⁠`

#### Special errors

-   -   *Code: NoSuchUpload*

    -   *Cause: The specified multipart upload does not exist. The
        upload ID might be invalid, or the multipart upload might have
        been aborted or completed.*

    -   *HTTP Status Code: 404 Not Found*

-   -   *Code: InvalidRequest*

    -   *Cause: The specified copy source is not supported as a
        byte-range copy source.*

    -   *HTTP Status Code: 400 Bad Request*

The following operations are related to `upload_part_copy`:

-   `create_multipart_upload`

-   `upload_part`

-   `complete_multipart_upload`

-   `abort_multipart_upload`

-   `list_parts`

-   `list_multipart_uploads`

### Usage

    s3_upload_part_copy(Bucket, CopySource, CopySourceIfMatch,
      CopySourceIfModifiedSince, CopySourceIfNoneMatch,
      CopySourceIfUnmodifiedSince, CopySourceRange, Key, PartNumber, UploadId,
      SSECustomerAlgorithm, SSECustomerKey, SSECustomerKeyMD5,
      CopySourceSSECustomerAlgorithm, CopySourceSSECustomerKey,
      CopySourceSSECustomerKeyMD5, RequestPayer, ExpectedBucketOwner,
      ExpectedSourceBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_upload_part_copy_:_Bucket">Bucket</code></td>
<td><p>[required] The bucket name.</p>
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
<td><code id="s3_upload_part_copy_:_CopySource">CopySource</code></td>
<td><p>[required] Specifies the source object for the copy operation.
You specify the value in one of two formats, depending on whether you
want to access the source object through an <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points.html">access
point</a>:</p>
<ul>
<li><p>For objects not accessed through an access point, specify the
name of the source bucket and key of the source object, separated by a
slash (/). For example, to copy the object
<code>reports/january.pdf</code> from the bucket
<code>awsexamplebucket</code>, use
<code>awsexamplebucket/reports/january.pdf</code>. The value must be
URL-encoded.</p></li>
<li><p>For objects accessed through access points, specify the Amazon
Resource Name (ARN) of the object as accessed through the access point,
in the format <code
style="white-space: pre;">⁠arn:aws:s3:&lt;Region&gt;:&lt;account-id&gt;:accesspoint/&lt;access-point-name&gt;/object/&lt;key&gt;⁠</code>.
For example, to copy the object <code>reports/january.pdf</code> through
access point <code>my-access-point</code> owned by account
<code>123456789012</code> in Region <code>us-west-2</code>, use the URL
encoding of
<code>arn:aws:s3:us-west-2:123456789012:accesspoint/my-access-point/object/reports/january.pdf</code>.
The value must be URL encoded.</p>
<p>Amazon S3 supports copy operations using access points only when the
source and destination buckets are in the same Amazon Web Services
Region.</p>
<p>Alternatively, for objects accessed through Amazon S3 on Outposts,
specify the ARN of the object as accessed in the format <code
style="white-space: pre;">⁠arn:aws:s3-outposts:&lt;Region&gt;:&lt;account-id&gt;:outpost/&lt;outpost-id&gt;/object/&lt;key&gt;⁠</code>.
For example, to copy the object <code>reports/january.pdf</code> through
outpost <code>my-outpost</code> owned by account
<code>123456789012</code> in Region <code>us-west-2</code>, use the URL
encoding of
<code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/object/reports/january.pdf</code>.
The value must be URL-encoded.</p></li>
</ul>
<p>To copy a specific version of an object, append <code
style="white-space: pre;">⁠?versionId=&lt;version-id&gt;⁠</code> to the
value (for example,
<code>awsexamplebucket/reports/january.pdf?versionId=QUpfdndhfd8438MNFDN93jdnJFkdmqnh893</code>).
If you don't specify a version ID, Amazon S3 copies the latest version
of the source object.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_upload_part_copy_:_CopySourceIfMatch">CopySourceIfMatch</code></td>
<td><p>Copies the object if its entity tag (ETag) matches the specified
tag.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_upload_part_copy_:_CopySourceIfModifiedSince">CopySourceIfModifiedSince</code></td>
<td><p>Copies the object if it has been modified since the specified
time.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_upload_part_copy_:_CopySourceIfNoneMatch">CopySourceIfNoneMatch</code></td>
<td><p>Copies the object if its entity tag (ETag) is different than the
specified ETag.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_upload_part_copy_:_CopySourceIfUnmodifiedSince">CopySourceIfUnmodifiedSince</code></td>
<td><p>Copies the object if it hasn't been modified since the specified
time.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_upload_part_copy_:_CopySourceRange">CopySourceRange</code></td>
<td><p>The range of bytes to copy from the source object. The range
value must use the form bytes=first-last, where the first and last are
the zero-based byte offsets to copy. For example, bytes=0-9 indicates
that you want to copy the first 10 bytes of the source. You can copy a
range only if the source object is greater than 5 MB.</p></td>
</tr>
<tr class="even">
<td><code id="s3_upload_part_copy_:_Key">Key</code></td>
<td><p>[required] Object key for which the multipart upload was
initiated.</p></td>
</tr>
<tr class="odd">
<td><code id="s3_upload_part_copy_:_PartNumber">PartNumber</code></td>
<td><p>[required] Part number of part being copied. This is a positive
integer between 1 and 10,000.</p></td>
</tr>
<tr class="even">
<td><code id="s3_upload_part_copy_:_UploadId">UploadId</code></td>
<td><p>[required] Upload ID identifying the multipart upload whose part
is being copied.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_upload_part_copy_:_SSECustomerAlgorithm">SSECustomerAlgorithm</code></td>
<td><p>Specifies the algorithm to use to when encrypting the object (for
example, AES256).</p></td>
</tr>
<tr class="even">
<td><code
id="s3_upload_part_copy_:_SSECustomerKey">SSECustomerKey</code></td>
<td><p>Specifies the customer-provided encryption key for Amazon S3 to
use in encrypting data. This value is used to store the object and then
it is discarded; Amazon S3 does not store the encryption key. The key
must be appropriate for use with the algorithm specified in the
<code>x-amz-server-side-encryption-customer-algorithm</code> header.
This must be the same encryption key specified in the initiate multipart
upload request.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_upload_part_copy_:_SSECustomerKeyMD5">SSECustomerKeyMD5</code></td>
<td><p>Specifies the 128-bit MD5 digest of the encryption key according
to RFC 1321. Amazon S3 uses this header for a message integrity check to
ensure that the encryption key was transmitted without error.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_upload_part_copy_:_CopySourceSSECustomerAlgorithm">CopySourceSSECustomerAlgorithm</code></td>
<td><p>Specifies the algorithm to use when decrypting the source object
(for example, AES256).</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_upload_part_copy_:_CopySourceSSECustomerKey">CopySourceSSECustomerKey</code></td>
<td><p>Specifies the customer-provided encryption key for Amazon S3 to
use to decrypt the source object. The encryption key provided in this
header must be one that was used when the source object was
created.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_upload_part_copy_:_CopySourceSSECustomerKeyMD5">CopySourceSSECustomerKeyMD5</code></td>
<td><p>Specifies the 128-bit MD5 digest of the encryption key according
to RFC 1321. Amazon S3 uses this header for a message integrity check to
ensure that the encryption key was transmitted without error.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_upload_part_copy_:_RequestPayer">RequestPayer</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="s3_upload_part_copy_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
<td><p>The account ID of the expected destination bucket owner. If the
destination bucket is owned by a different account, the request fails
with the HTTP status code <code
style="white-space: pre;">⁠403 Forbidden⁠</code> (access denied).</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_upload_part_copy_:_ExpectedSourceBucketOwner">ExpectedSourceBucketOwner</code></td>
<td><p>The account ID of the expected source bucket owner. If the source
bucket is owned by a different account, the request fails with the HTTP
status code <code style="white-space: pre;">⁠403 Forbidden⁠</code> (access
denied).</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CopySourceVersionId = "string",
      CopyPartResult = list(
        ETag = "string",
        LastModified = as.POSIXct(
          "2015-01-01"
        ),
        ChecksumCRC32 = "string",
        ChecksumCRC32C = "string",
        ChecksumSHA1 = "string",
        ChecksumSHA256 = "string"
      ),
      ServerSideEncryption = "AES256"|"aws:kms",
      SSECustomerAlgorithm = "string",
      SSECustomerKeyMD5 = "string",
      SSEKMSKeyId = "string",
      BucketKeyEnabled = TRUE|FALSE,
      RequestCharged = "requester"
    )

### Request syntax

    svc$upload_part_copy(
      Bucket = "string",
      CopySource = "string",
      CopySourceIfMatch = "string",
      CopySourceIfModifiedSince = as.POSIXct(
        "2015-01-01"
      ),
      CopySourceIfNoneMatch = "string",
      CopySourceIfUnmodifiedSince = as.POSIXct(
        "2015-01-01"
      ),
      CopySourceRange = "string",
      Key = "string",
      PartNumber = 123,
      UploadId = "string",
      SSECustomerAlgorithm = "string",
      SSECustomerKey = raw,
      SSECustomerKeyMD5 = "string",
      CopySourceSSECustomerAlgorithm = "string",
      CopySourceSSECustomerKey = raw,
      CopySourceSSECustomerKeyMD5 = "string",
      RequestPayer = "requester",
      ExpectedBucketOwner = "string",
      ExpectedSourceBucketOwner = "string"
    )

### Examples

    ## Not run: 
    # The following example uploads a part of a multipart upload by copying
    # data from an existing object as data source.
    svc$upload_part_copy(
      Bucket = "examplebucket",
      CopySource = "/bucketname/sourceobjectkey",
      Key = "examplelargeobject",
      PartNumber = "1",
      UploadId = "exampleuoh_10OhKhT7YukE9bjzTPRiuaCotmZM_pFngJFir9OZNrSr5cWa3c..."
    )

    # The following example uploads a part of a multipart upload by copying a
    # specified byte range from an existing object as data source.
    svc$upload_part_copy(
      Bucket = "examplebucket",
      CopySource = "/bucketname/sourceobjectkey",
      CopySourceRange = "bytes=1-100000",
      Key = "examplelargeobject",
      PartNumber = "2",
      UploadId = "exampleuoh_10OhKhT7YukE9bjzTPRiuaCotmZM_pFngJFir9OZNrSr5cWa3c..."
    )

    ## End(Not run)
