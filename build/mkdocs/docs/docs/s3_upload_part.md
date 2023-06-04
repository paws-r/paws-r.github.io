<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_upload_part</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Uploads a part in a multipart upload

### Description

Uploads a part in a multipart upload.

In this operation, you provide part data in your request. However, you
have an option to specify your existing Amazon S3 object as a data
source for the part you are uploading. To upload a part from an existing
object, you use the `upload_part_copy` operation.

You must initiate a multipart upload (see `create_multipart_upload`)
before you can upload any part. In response to your initiate request,
Amazon S3 returns an upload ID, a unique identifier, that you must
include in your upload part request.

Part numbers can be any number from 1 to 10,000, inclusive. A part
number uniquely identifies a part and also defines its position within
the object being created. If you upload a new part using the same part
number that was used with a previous part, the previously uploaded part
is overwritten.

For information about maximum and minimum part sizes and other multipart
upload specifications, see [Multipart upload
limits](https://docs.aws.amazon.com/AmazonS3/latest/userguide/qfacts.html)
in the *Amazon S3 User Guide*.

To ensure that data is not corrupted when traversing the network,
specify the `Content-MD5` header in the upload part request. Amazon S3
checks the part data against the provided MD5 value. If they do not
match, Amazon S3 returns an error.

If the upload request is signed with Signature Version 4, then Amazon
Web Services S3 uses the `x-amz-content-sha256` header as a checksum
instead of `Content-MD5`. For more information see [Authenticating
Requests: Using the Authorization Header (Amazon Web Services Signature
Version
4)](https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-auth-using-authorization-header.html).

**Note:** After you initiate multipart upload and upload one or more
parts, you must either complete or abort multipart upload in order to
stop getting charged for storage of the uploaded parts. Only after you
either complete or abort multipart upload, Amazon S3 frees up the parts
storage and stops charging you for the parts storage.

For more information on multipart uploads, go to [Multipart Upload
Overview](https://docs.aws.amazon.com/AmazonS3/latest/userguide/mpuoverview.html)
in the *Amazon S3 User Guide* .

For information on the permissions required to use the multipart upload
API, go to [Multipart Upload and
Permissions](https://docs.aws.amazon.com/AmazonS3/latest/userguide/mpuoverview.html)
in the *Amazon S3 User Guide*.

Server-side encryption is for data encryption at rest. Amazon S3
encrypts your data as it writes it to disks in its data centers and
decrypts it when you access it. You have three mutually exclusive
options to protect data using server-side encryption in Amazon S3,
depending on how you choose to manage the encryption keys. Specifically,
the encryption key options are Amazon S3 managed keys (SSE-S3), Amazon
Web Services KMS keys (SSE-KMS), and Customer-Provided Keys (SSE-C).
Amazon S3 encrypts data with server-side encryption using Amazon S3
managed keys (SSE-S3) by default. You can optionally tell Amazon S3 to
encrypt data at rest using server-side encryption with other key
options. The option you use depends on whether you want to use KMS keys
(SSE-KMS) or provide your own encryption key (SSE-C). If you choose to
provide your own encryption key, the request headers you provide in the
request must match the headers you used in the request to initiate the
upload by using `create_multipart_upload`. For more information, go to
[Using Server-Side
Encryption](https://docs.aws.amazon.com/AmazonS3/latest/userguide/UsingServerSideEncryption.html)
in the *Amazon S3 User Guide*.

Server-side encryption is supported by the S3 Multipart Upload actions.
Unless you are using a customer-provided encryption key (SSE-C), you
don't need to specify the encryption parameters in each UploadPart
request. Instead, you only need to specify the server-side encryption
parameters in the initial Initiate Multipart request. For more
information, see `create_multipart_upload`.

If you requested server-side encryption using a customer-provided
encryption key (SSE-C) in your initiate multipart upload request, you
must provide identical encryption information in each part upload using
the following headers.

-   x-amz-server-side-encryption-customer-algorithm

-   x-amz-server-side-encryption-customer-key

-   x-amz-server-side-encryption-customer-key-MD5

`upload_part` has the following special errors:

-   -   *Code: NoSuchUpload*

    -   *Cause: The specified multipart upload does not exist. The
        upload ID might be invalid, or the multipart upload might have
        been aborted or completed.*

    -   *HTTP Status Code: 404 Not Found*

    -   *SOAP Fault Code Prefix: Client*

The following operations are related to `upload_part`:

-   `create_multipart_upload`

-   `complete_multipart_upload`

-   `abort_multipart_upload`

-   `list_parts`

-   `list_multipart_uploads`

### Usage

    s3_upload_part(Body, Bucket, ContentLength, ContentMD5,
      ChecksumAlgorithm, ChecksumCRC32, ChecksumCRC32C, ChecksumSHA1,
      ChecksumSHA256, Key, PartNumber, UploadId, SSECustomerAlgorithm,
      SSECustomerKey, SSECustomerKeyMD5, RequestPayer, ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_upload_part_:_Body">Body</code></td>
<td><p>Object data.</p></td>
</tr>
<tr class="even">
<td><code id="s3_upload_part_:_Bucket">Bucket</code></td>
<td><p>[required] The name of the bucket to which the multipart upload
was initiated.</p>
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
<tr class="odd">
<td><code id="s3_upload_part_:_ContentLength">ContentLength</code></td>
<td><p>Size of the body in bytes. This parameter is useful when the size
of the body cannot be determined automatically.</p></td>
</tr>
<tr class="even">
<td><code id="s3_upload_part_:_ContentMD5">ContentMD5</code></td>
<td><p>The base64-encoded 128-bit MD5 digest of the part data. This
parameter is auto-populated when using the command from the CLI. This
parameter is required if object lock parameters are specified.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_upload_part_:_ChecksumAlgorithm">ChecksumAlgorithm</code></td>
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
<code>ChecksumAlgorithm</code> parameter.</p>
<p>This checksum algorithm must be the same for all parts and it match
the checksum value supplied in the <code>create_multipart_upload</code>
request.</p></td>
</tr>
<tr class="even">
<td><code id="s3_upload_part_:_ChecksumCRC32">ChecksumCRC32</code></td>
<td><p>This header can be used as a data integrity check to verify that
the data received is the same data that was originally sent. This header
specifies the base64-encoded, 32-bit CRC32 checksum of the object. For
more information, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking
object integrity</a> in the <em>Amazon S3 User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_upload_part_:_ChecksumCRC32C">ChecksumCRC32C</code></td>
<td><p>This header can be used as a data integrity check to verify that
the data received is the same data that was originally sent. This header
specifies the base64-encoded, 32-bit CRC32C checksum of the object. For
more information, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking
object integrity</a> in the <em>Amazon S3 User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code id="s3_upload_part_:_ChecksumSHA1">ChecksumSHA1</code></td>
<td><p>This header can be used as a data integrity check to verify that
the data received is the same data that was originally sent. This header
specifies the base64-encoded, 160-bit SHA-1 digest of the object. For
more information, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking
object integrity</a> in the <em>Amazon S3 User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_upload_part_:_ChecksumSHA256">ChecksumSHA256</code></td>
<td><p>This header can be used as a data integrity check to verify that
the data received is the same data that was originally sent. This header
specifies the base64-encoded, 256-bit SHA-256 digest of the object. For
more information, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking
object integrity</a> in the <em>Amazon S3 User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code id="s3_upload_part_:_Key">Key</code></td>
<td><p>[required] Object key for which the multipart upload was
initiated.</p></td>
</tr>
<tr class="odd">
<td><code id="s3_upload_part_:_PartNumber">PartNumber</code></td>
<td><p>[required] Part number of part being uploaded. This is a positive
integer between 1 and 10,000.</p></td>
</tr>
<tr class="even">
<td><code id="s3_upload_part_:_UploadId">UploadId</code></td>
<td><p>[required] Upload ID identifying the multipart upload whose part
is being uploaded.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_upload_part_:_SSECustomerAlgorithm">SSECustomerAlgorithm</code></td>
<td><p>Specifies the algorithm to use to when encrypting the object (for
example, AES256).</p></td>
</tr>
<tr class="even">
<td><code
id="s3_upload_part_:_SSECustomerKey">SSECustomerKey</code></td>
<td><p>Specifies the customer-provided encryption key for Amazon S3 to
use in encrypting data. This value is used to store the object and then
it is discarded; Amazon S3 does not store the encryption key. The key
must be appropriate for use with the algorithm specified in the <code
style="white-space: pre;">⁠x-amz-server-side-encryption-customer-algorithm header⁠</code>.
This must be the same encryption key specified in the initiate multipart
upload request.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_upload_part_:_SSECustomerKeyMD5">SSECustomerKeyMD5</code></td>
<td><p>Specifies the 128-bit MD5 digest of the encryption key according
to RFC 1321. Amazon S3 uses this header for a message integrity check to
ensure that the encryption key was transmitted without error.</p></td>
</tr>
<tr class="even">
<td><code id="s3_upload_part_:_RequestPayer">RequestPayer</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="s3_upload_part_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
<td><p>The account ID of the expected bucket owner. If the bucket is
owned by a different account, the request fails with the HTTP status
code <code style="white-space: pre;">⁠403 Forbidden⁠</code> (access
denied).</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ServerSideEncryption = "AES256"|"aws:kms",
      ETag = "string",
      ChecksumCRC32 = "string",
      ChecksumCRC32C = "string",
      ChecksumSHA1 = "string",
      ChecksumSHA256 = "string",
      SSECustomerAlgorithm = "string",
      SSECustomerKeyMD5 = "string",
      SSEKMSKeyId = "string",
      BucketKeyEnabled = TRUE|FALSE,
      RequestCharged = "requester"
    )

### Request syntax

    svc$upload_part(
      Body = raw,
      Bucket = "string",
      ContentLength = 123,
      ContentMD5 = "string",
      ChecksumAlgorithm = "CRC32"|"CRC32C"|"SHA1"|"SHA256",
      ChecksumCRC32 = "string",
      ChecksumCRC32C = "string",
      ChecksumSHA1 = "string",
      ChecksumSHA256 = "string",
      Key = "string",
      PartNumber = 123,
      UploadId = "string",
      SSECustomerAlgorithm = "string",
      SSECustomerKey = raw,
      SSECustomerKeyMD5 = "string",
      RequestPayer = "requester",
      ExpectedBucketOwner = "string"
    )

### Examples

    ## Not run: 
    # The following example uploads part 1 of a multipart upload. The example
    # specifies a file name for the part data. The Upload ID is same that is
    # returned by the initiate multipart upload.
    svc$upload_part(
      Body = "fileToUpload",
      Bucket = "examplebucket",
      Key = "examplelargeobject",
      PartNumber = "1",
      UploadId = "xadcOB_7YPBOJuoFiQ9cz4P3Pe6FIZwO4f7wN93uHsNBEw97pl5eNwzExg0LA..."
    )

    ## End(Not run)
