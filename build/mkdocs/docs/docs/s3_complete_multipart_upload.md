<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_complete_multipart_upload</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Completes a multipart upload by assembling previously uploaded parts

### Description

Completes a multipart upload by assembling previously uploaded parts.

You first initiate the multipart upload and then upload all parts using
the `upload_part` operation. After successfully uploading all relevant
parts of an upload, you call this action to complete the upload. Upon
receiving this request, Amazon S3 concatenates all the parts in
ascending order by part number to create a new object. In the Complete
Multipart Upload request, you must provide the parts list. You must
ensure that the parts list is complete. This action concatenates the
parts that you provide in the list. For each part in the list, you must
provide the part number and the `ETag` value, returned after that part
was uploaded.

Processing of a Complete Multipart Upload request could take several
minutes to complete. After Amazon S3 begins processing the request, it
sends an HTTP response header that specifies a 200 OK response. While
processing is in progress, Amazon S3 periodically sends white space
characters to keep the connection from timing out. A request could fail
after the initial 200 OK response has been sent. This means that a
`⁠200 OK⁠` response can contain either a success or an error. If you call
the S3 API directly, make sure to design your application to parse the
contents of the response and handle it appropriately. If you use Amazon
Web Services SDKs, SDKs handle this condition. The SDKs detect the
embedded error and apply error handling per your configuration settings
(including automatically retrying the request as appropriate). If the
condition persists, the SDKs throws an exception (or, for the SDKs that
don't use exceptions, they return the error).

Note that if `complete_multipart_upload` fails, applications should be
prepared to retry the failed requests. For more information, see [Amazon
S3 Error Best
Practices](https://docs.aws.amazon.com/AmazonS3/latest/userguide/ErrorBestPractices.html).

You cannot use `Content-Type: application/x-www-form-urlencoded` with
Complete Multipart Upload requests. Also, if you do not provide a
`Content-Type` header, `complete_multipart_upload` returns a 200 OK
response.

For more information about multipart uploads, see [Uploading Objects
Using Multipart
Upload](https://docs.aws.amazon.com/AmazonS3/latest/userguide/mpuoverview.html).

For information about permissions required to use the multipart upload
API, see [Multipart Upload and
Permissions](https://docs.aws.amazon.com/AmazonS3/latest/userguide/mpuoverview.html).

`complete_multipart_upload` has the following special errors:

-   Error code: `EntityTooSmall`

    -   Description: Your proposed upload is smaller than the minimum
        allowed object size. Each part must be at least 5 MB in size,
        except the last part.

    -   400 Bad Request

-   Error code: `InvalidPart`

    -   Description: One or more of the specified parts could not be
        found. The part might not have been uploaded, or the specified
        entity tag might not have matched the part's entity tag.

    -   400 Bad Request

-   Error code: `InvalidPartOrder`

    -   Description: The list of parts was not in ascending order. The
        parts list must be specified in order by part number.

    -   400 Bad Request

-   Error code: `NoSuchUpload`

    -   Description: The specified multipart upload does not exist. The
        upload ID might be invalid, or the multipart upload might have
        been aborted or completed.

    -   404 Not Found

The following operations are related to `complete_multipart_upload`:

-   `create_multipart_upload`

-   `upload_part`

-   `abort_multipart_upload`

-   `list_parts`

-   `list_multipart_uploads`

### Usage

    s3_complete_multipart_upload(Bucket, Key, MultipartUpload, UploadId,
      ChecksumCRC32, ChecksumCRC32C, ChecksumSHA1, ChecksumSHA256,
      RequestPayer, ExpectedBucketOwner, SSECustomerAlgorithm, SSECustomerKey,
      SSECustomerKeyMD5)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_complete_multipart_upload_:_Bucket">Bucket</code></td>
<td><p>[required] Name of the bucket to which the multipart upload was
initiated.</p>
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
<td><code id="s3_complete_multipart_upload_:_Key">Key</code></td>
<td><p>[required] Object key for which the multipart upload was
initiated.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_complete_multipart_upload_:_MultipartUpload">MultipartUpload</code></td>
<td><p>The container for the multipart upload request
information.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_complete_multipart_upload_:_UploadId">UploadId</code></td>
<td><p>[required] ID for the initiated multipart upload.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_complete_multipart_upload_:_ChecksumCRC32">ChecksumCRC32</code></td>
<td><p>This header can be used as a data integrity check to verify that
the data received is the same data that was originally sent. This header
specifies the base64-encoded, 32-bit CRC32 checksum of the object. For
more information, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking
object integrity</a> in the <em>Amazon S3 User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_complete_multipart_upload_:_ChecksumCRC32C">ChecksumCRC32C</code></td>
<td><p>This header can be used as a data integrity check to verify that
the data received is the same data that was originally sent. This header
specifies the base64-encoded, 32-bit CRC32C checksum of the object. For
more information, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking
object integrity</a> in the <em>Amazon S3 User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_complete_multipart_upload_:_ChecksumSHA1">ChecksumSHA1</code></td>
<td><p>This header can be used as a data integrity check to verify that
the data received is the same data that was originally sent. This header
specifies the base64-encoded, 160-bit SHA-1 digest of the object. For
more information, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking
object integrity</a> in the <em>Amazon S3 User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_complete_multipart_upload_:_ChecksumSHA256">ChecksumSHA256</code></td>
<td><p>This header can be used as a data integrity check to verify that
the data received is the same data that was originally sent. This header
specifies the base64-encoded, 256-bit SHA-256 digest of the object. For
more information, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking
object integrity</a> in the <em>Amazon S3 User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_complete_multipart_upload_:_RequestPayer">RequestPayer</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="s3_complete_multipart_upload_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
<td><p>The account ID of the expected bucket owner. If the bucket is
owned by a different account, the request fails with the HTTP status
code <code style="white-space: pre;">⁠403 Forbidden⁠</code> (access
denied).</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_complete_multipart_upload_:_SSECustomerAlgorithm">SSECustomerAlgorithm</code></td>
<td><p>The server-side encryption (SSE) algorithm used to encrypt the
object. This parameter is needed only when the object was created using
a checksum algorithm. For more information, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/ServerSideEncryptionCustomerKeys.html">Protecting
data using SSE-C keys</a> in the <em>Amazon S3 User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_complete_multipart_upload_:_SSECustomerKey">SSECustomerKey</code></td>
<td><p>The server-side encryption (SSE) customer managed key. This
parameter is needed only when the object was created using a checksum
algorithm. For more information, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/ServerSideEncryptionCustomerKeys.html">Protecting
data using SSE-C keys</a> in the <em>Amazon S3 User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_complete_multipart_upload_:_SSECustomerKeyMD5">SSECustomerKeyMD5</code></td>
<td><p>The MD5 server-side encryption (SSE) customer managed key. This
parameter is needed only when the object was created using a checksum
algorithm. For more information, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/ServerSideEncryptionCustomerKeys.html">Protecting
data using SSE-C keys</a> in the <em>Amazon S3 User Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Location = "string",
      Bucket = "string",
      Key = "string",
      Expiration = "string",
      ETag = "string",
      ChecksumCRC32 = "string",
      ChecksumCRC32C = "string",
      ChecksumSHA1 = "string",
      ChecksumSHA256 = "string",
      ServerSideEncryption = "AES256"|"aws:kms",
      VersionId = "string",
      SSEKMSKeyId = "string",
      BucketKeyEnabled = TRUE|FALSE,
      RequestCharged = "requester"
    )

### Request syntax

    svc$complete_multipart_upload(
      Bucket = "string",
      Key = "string",
      MultipartUpload = list(
        Parts = list(
          list(
            ETag = "string",
            ChecksumCRC32 = "string",
            ChecksumCRC32C = "string",
            ChecksumSHA1 = "string",
            ChecksumSHA256 = "string",
            PartNumber = 123
          )
        )
      ),
      UploadId = "string",
      ChecksumCRC32 = "string",
      ChecksumCRC32C = "string",
      ChecksumSHA1 = "string",
      ChecksumSHA256 = "string",
      RequestPayer = "requester",
      ExpectedBucketOwner = "string",
      SSECustomerAlgorithm = "string",
      SSECustomerKey = raw,
      SSECustomerKeyMD5 = "string"
    )

### Examples

    ## Not run: 
    # The following example completes a multipart upload.
    svc$complete_multipart_upload(
      Bucket = "examplebucket",
      Key = "bigobject",
      MultipartUpload = list(
        Parts = list(
          list(
            ETag = ""d8c2eafd90c266e19ab9dcacc479f8af"",
            PartNumber = "1"
          ),
          list(
            ETag = ""d8c2eafd90c266e19ab9dcacc479f8af"",
            PartNumber = "2"
          )
        )
      ),
      UploadId = "7YPBOJuoFiQ9cz4P3Pe6FIZwO4f7wN93uHsNBEw97pl5eNwzExg0LAT2dUN91..."
    )

    ## End(Not run)
