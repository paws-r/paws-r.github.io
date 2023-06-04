<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_create_multipart_upload</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This action initiates a multipart upload and returns an upload ID

### Description

This action initiates a multipart upload and returns an upload ID. This
upload ID is used to associate all of the parts in the specific
multipart upload. You specify this upload ID in each of your subsequent
upload part requests (see `upload_part`). You also include this upload
ID in the final request to either complete or abort the multipart upload
request.

For more information about multipart uploads, see [Multipart Upload
Overview](https://docs.aws.amazon.com/AmazonS3/latest/userguide/mpuoverview.html).

If you have configured a lifecycle rule to abort incomplete multipart
uploads, the upload must complete within the number of days specified in
the bucket lifecycle configuration. Otherwise, the incomplete multipart
upload becomes eligible for an abort action and Amazon S3 aborts the
multipart upload. For more information, see [Aborting Incomplete
Multipart Uploads Using a Bucket Lifecycle
Configuration](https://docs.aws.amazon.com/AmazonS3/latest/userguide/mpuoverview.html#mpu-abort-incomplete-mpu-lifecycle-config).

For information about the permissions required to use the multipart
upload API, see [Multipart Upload and
Permissions](https://docs.aws.amazon.com/AmazonS3/latest/userguide/mpuoverview.html).

For request signing, multipart upload is just a series of regular
requests. You initiate a multipart upload, send one or more requests to
upload parts, and then complete the multipart upload process. You sign
each request individually. There is nothing special about signing
multipart upload requests. For more information about signing, see
[Authenticating Requests (Amazon Web Services Signature Version
4)](https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html).

After you initiate a multipart upload and upload one or more parts, to
stop being charged for storing the uploaded parts, you must either
complete or abort the multipart upload. Amazon S3 frees up the space
used to store the parts and stop charging you for storing them only
after you either complete or abort a multipart upload.

Server-side encryption is for data encryption at rest. Amazon S3
encrypts your data as it writes it to disks in its data centers and
decrypts it when you access it. Amazon S3 automatically encrypts all new
objects that are uploaded to an S3 bucket. When doing a multipart
upload, if you don't specify encryption information in your request, the
encryption setting of the uploaded parts is set to the default
encryption configuration of the destination bucket. By default, all
buckets have a base level of encryption configuration that uses
server-side encryption with Amazon S3 managed keys (SSE-S3). If the
destination bucket has a default encryption configuration that uses
server-side encryption with an Key Management Service (KMS) key
(SSE-KMS), or a customer-provided encryption key (SSE-C), Amazon S3 uses
the corresponding KMS key, or a customer-provided key to encrypt the
uploaded parts. When you perform a CreateMultipartUpload operation, if
you want to use a different type of encryption setting for the uploaded
parts, you can request that Amazon S3 encrypts the object with a KMS
key, an Amazon S3 managed key, or a customer-provided key. If the
encryption setting in your request is different from the default
encryption configuration of the destination bucket, the encryption
setting in your request takes precedence. If you choose to provide your
own encryption key, the request headers you provide in `upload_part` and
`upload_part_copy` requests must match the headers you used in the
request to initiate the upload by using `create_multipart_upload`. You
can request that Amazon S3 save the uploaded parts encrypted with
server-side encryption with an Amazon S3 managed key (SSE-S3), an Key
Management Service (KMS) key (SSE-KMS), or a customer-provided
encryption key (SSE-C).

To perform a multipart upload with encryption by using an Amazon Web
Services KMS key, the requester must have permission to the
`kms:Decrypt` and `⁠kms:GenerateDataKey*⁠` actions on the key. These
permissions are required because Amazon S3 must decrypt and read data
from the encrypted file parts before it completes the multipart upload.
For more information, see [Multipart upload API and
permissions](https://docs.aws.amazon.com/AmazonS3/latest/userguide/mpuoverview.html#mpuAndPermissions)
and [Protecting data using server-side encryption with Amazon Web
Services
KMS](https://docs.aws.amazon.com/AmazonS3/latest/userguide/UsingKMSEncryption.html)
in the *Amazon S3 User Guide*.

If your Identity and Access Management (IAM) user or role is in the same
Amazon Web Services account as the KMS key, then you must have these
permissions on the key policy. If your IAM user or role belongs to a
different account than the key, then you must have the permissions on
both the key policy and your IAM user or role.

For more information, see [Protecting Data Using Server-Side
Encryption](https://docs.aws.amazon.com/AmazonS3/latest/userguide/serv-side-encryption.html).

#### Access Permissions

When copying an object, you can optionally specify the accounts or
groups that should be granted specific permissions on the new object.
There are two ways to grant the permissions using the request headers:

-   Specify a canned ACL with the `x-amz-acl` request header. For more
    information, see [Canned
    ACL](https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html#CannedACL).

-   Specify access permissions explicitly with the `x-amz-grant-read`,
    `x-amz-grant-read-acp`, `x-amz-grant-write-acp`, and
    `x-amz-grant-full-control` headers. These parameters map to the set
    of permissions that Amazon S3 supports in an ACL. For more
    information, see [Access Control List (ACL)
    Overview](https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html).

You can use either a canned ACL or specify access permissions
explicitly. You cannot do both.

#### Server-Side- Encryption-Specific Request Headers

Amazon S3 encrypts data by using server-side encryption with an Amazon
S3 managed key (SSE-S3) by default. Server-side encryption is for data
encryption at rest. Amazon S3 encrypts your data as it writes it to
disks in its data centers and decrypts it when you access it. You can
request that Amazon S3 encrypts data at rest by using server-side
encryption with other key options. The option you use depends on whether
you want to use KMS keys (SSE-KMS) or provide your own encryption keys
(SSE-C).

-   Use KMS keys (SSE-KMS) that include the Amazon Web Services managed
    key (`aws/s3`) and KMS customer managed keys stored in Key
    Management Service (KMS) – If you want Amazon Web Services to manage
    the keys used to encrypt data, specify the following headers in the
    request.

    -   `x-amz-server-side-encryption`

    -   `x-amz-server-side-encryption-aws-kms-key-id`

    -   `x-amz-server-side-encryption-context`

    If you specify `x-amz-server-side-encryption:aws:kms`, but don't
    provide `x-amz-server-side-encryption-aws-kms-key-id`, Amazon S3
    uses the Amazon Web Services managed key (`aws/s3` key) in KMS to
    protect the data.

    All `GET` and `PUT` requests for an object protected by KMS fail if
    you don't make them by using Secure Sockets Layer (SSL), Transport
    Layer Security (TLS), or Signature Version 4.

    For more information about server-side encryption with KMS keys
    (SSE-KMS), see [Protecting Data Using Server-Side Encryption with
    KMS
    keys](https://docs.aws.amazon.com/AmazonS3/latest/userguide/UsingKMSEncryption.html).

-   Use customer-provided encryption keys (SSE-C) – If you want to
    manage your own encryption keys, provide all the following headers
    in the request.

    -   `x-amz-server-side-encryption-customer-algorithm`

    -   `x-amz-server-side-encryption-customer-key`

    -   `x-amz-server-side-encryption-customer-key-MD5`

    For more information about server-side encryption with
    customer-provided encryption keys (SSE-C), see [Protecting data
    using server-side encryption with customer-provided encryption keys
    (SSE-C)](https://docs.aws.amazon.com/AmazonS3/latest/userguide/ServerSideEncryptionCustomerKeys.html).

#### Access-Control-List (ACL)-Specific Request Headers

You also can use the following access control–related headers with this
operation. By default, all objects are private. Only the owner has full
access control. When adding a new object, you can grant permissions to
individual Amazon Web Services accounts or to predefined groups defined
by Amazon S3. These permissions are then added to the access control
list (ACL) on the object. For more information, see [Using
ACLs](https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html).
With this operation, you can grant access permissions using one of the
following two methods:

-   Specify a canned ACL (`x-amz-acl`) — Amazon S3 supports a set of
    predefined ACLs, known as *canned ACLs*. Each canned ACL has a
    predefined set of grantees and permissions. For more information,
    see [Canned
    ACL](https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html#CannedACL).

-   Specify access permissions explicitly — To explicitly grant access
    permissions to specific Amazon Web Services accounts or groups, use
    the following headers. Each header maps to specific permissions that
    Amazon S3 supports in an ACL. For more information, see [Access
    Control List (ACL)
    Overview](https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html).
    In the header, you specify a list of grantees who get the specific
    permission. To grant permissions explicitly, use:

    -   `x-amz-grant-read`

    -   `x-amz-grant-write`

    -   `x-amz-grant-read-acp`

    -   `x-amz-grant-write-acp`

    -   `x-amz-grant-full-control`

    You specify each grantee as a type=value pair, where the type is one
    of the following:

    -   `id` – if the value specified is the canonical user ID of an
        Amazon Web Services account

    -   `uri` – if you are granting permissions to a predefined group

    -   `emailAddress` – if the value specified is the email address of
        an Amazon Web Services account

        Using email addresses to specify a grantee is only supported in
        the following Amazon Web Services Regions:

        -   US East (N. Virginia)

        -   US West (N. California)

        -   US West (Oregon)

        -   Asia Pacific (Singapore)

        -   Asia Pacific (Sydney)

        -   Asia Pacific (Tokyo)

        -   Europe (Ireland)

        -   South America (São Paulo)

        For a list of all the Amazon S3 supported Regions and endpoints,
        see [Regions and
        Endpoints](https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region)
        in the Amazon Web Services General Reference.

    For example, the following `x-amz-grant-read` header grants the
    Amazon Web Services accounts identified by account IDs permissions
    to read object data and its metadata:

    `⁠x-amz-grant-read: id="11112222333", id="444455556666" ⁠`

The following operations are related to `create_multipart_upload`:

-   `upload_part`

-   `complete_multipart_upload`

-   `abort_multipart_upload`

-   `list_parts`

-   `list_multipart_uploads`

### Usage

    s3_create_multipart_upload(ACL, Bucket, CacheControl,
      ContentDisposition, ContentEncoding, ContentLanguage, ContentType,
      Expires, GrantFullControl, GrantRead, GrantReadACP, GrantWriteACP, Key,
      Metadata, ServerSideEncryption, StorageClass, WebsiteRedirectLocation,
      SSECustomerAlgorithm, SSECustomerKey, SSECustomerKeyMD5, SSEKMSKeyId,
      SSEKMSEncryptionContext, BucketKeyEnabled, RequestPayer, Tagging,
      ObjectLockMode, ObjectLockRetainUntilDate, ObjectLockLegalHoldStatus,
      ExpectedBucketOwner, ChecksumAlgorithm)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_create_multipart_upload_:_ACL">ACL</code></td>
<td><p>The canned ACL to apply to the object.</p>
<p>This action is not supported by Amazon S3 on Outposts.</p></td>
</tr>
<tr class="even">
<td><code id="s3_create_multipart_upload_:_Bucket">Bucket</code></td>
<td><p>[required] The name of the bucket to which to initiate the
upload</p>
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
<td><code
id="s3_create_multipart_upload_:_CacheControl">CacheControl</code></td>
<td><p>Specifies caching behavior along the request/reply
chain.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_create_multipart_upload_:_ContentDisposition">ContentDisposition</code></td>
<td><p>Specifies presentational information for the object.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_create_multipart_upload_:_ContentEncoding">ContentEncoding</code></td>
<td><p>Specifies what content encodings have been applied to the object
and thus what decoding mechanisms must be applied to obtain the
media-type referenced by the Content-Type header field.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_create_multipart_upload_:_ContentLanguage">ContentLanguage</code></td>
<td><p>The language the content is in.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_create_multipart_upload_:_ContentType">ContentType</code></td>
<td><p>A standard MIME type describing the format of the object
data.</p></td>
</tr>
<tr class="even">
<td><code id="s3_create_multipart_upload_:_Expires">Expires</code></td>
<td><p>The date and time at which the object is no longer
cacheable.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_create_multipart_upload_:_GrantFullControl">GrantFullControl</code></td>
<td><p>Gives the grantee READ, READ_ACP, and WRITE_ACP permissions on
the object.</p>
<p>This action is not supported by Amazon S3 on Outposts.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_create_multipart_upload_:_GrantRead">GrantRead</code></td>
<td><p>Allows grantee to read the object data and its metadata.</p>
<p>This action is not supported by Amazon S3 on Outposts.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_create_multipart_upload_:_GrantReadACP">GrantReadACP</code></td>
<td><p>Allows grantee to read the object ACL.</p>
<p>This action is not supported by Amazon S3 on Outposts.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_create_multipart_upload_:_GrantWriteACP">GrantWriteACP</code></td>
<td><p>Allows grantee to write the ACL for the applicable object.</p>
<p>This action is not supported by Amazon S3 on Outposts.</p></td>
</tr>
<tr class="odd">
<td><code id="s3_create_multipart_upload_:_Key">Key</code></td>
<td><p>[required] Object key for which the multipart upload is to be
initiated.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_create_multipart_upload_:_Metadata">Metadata</code></td>
<td><p>A map of metadata to store with the object in S3.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_create_multipart_upload_:_ServerSideEncryption">ServerSideEncryption</code></td>
<td><p>The server-side encryption algorithm used when storing this
object in Amazon S3 (for example, AES256,
<code>aws:kms</code>).</p></td>
</tr>
<tr class="even">
<td><code
id="s3_create_multipart_upload_:_StorageClass">StorageClass</code></td>
<td><p>By default, Amazon S3 uses the STANDARD Storage Class to store
newly created objects. The STANDARD storage class provides high
durability and high availability. Depending on performance needs, you
can specify a different Storage Class. Amazon S3 on Outposts only uses
the OUTPOSTS Storage Class. For more information, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage-class-intro.html">Storage
Classes</a> in the <em>Amazon S3 User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_create_multipart_upload_:_WebsiteRedirectLocation">WebsiteRedirectLocation</code></td>
<td><p>If the bucket is configured as a website, redirects requests for
this object to another object in the same bucket or to an external URL.
Amazon S3 stores the value of this header in the object
metadata.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_create_multipart_upload_:_SSECustomerAlgorithm">SSECustomerAlgorithm</code></td>
<td><p>Specifies the algorithm to use to when encrypting the object (for
example, AES256).</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_create_multipart_upload_:_SSECustomerKey">SSECustomerKey</code></td>
<td><p>Specifies the customer-provided encryption key for Amazon S3 to
use in encrypting data. This value is used to store the object and then
it is discarded; Amazon S3 does not store the encryption key. The key
must be appropriate for use with the algorithm specified in the
<code>x-amz-server-side-encryption-customer-algorithm</code>
header.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_create_multipart_upload_:_SSECustomerKeyMD5">SSECustomerKeyMD5</code></td>
<td><p>Specifies the 128-bit MD5 digest of the encryption key according
to RFC 1321. Amazon S3 uses this header for a message integrity check to
ensure that the encryption key was transmitted without error.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_create_multipart_upload_:_SSEKMSKeyId">SSEKMSKeyId</code></td>
<td><p>Specifies the ID of the symmetric encryption customer managed key
to use for object encryption. All GET and PUT requests for an object
protected by Amazon Web Services KMS will fail if not made via SSL or
using SigV4. For information about configuring using any of the
officially supported Amazon Web Services SDKs and Amazon Web Services
CLI, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/UsingAWSSDK.html#specify-signature-version">Specifying
the Signature Version in Request Authentication</a> in the <em>Amazon S3
User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_create_multipart_upload_:_SSEKMSEncryptionContext">SSEKMSEncryptionContext</code></td>
<td><p>Specifies the Amazon Web Services KMS Encryption Context to use
for object encryption. The value of this header is a base64-encoded
UTF-8 string holding JSON with the encryption context key-value
pairs.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_create_multipart_upload_:_BucketKeyEnabled">BucketKeyEnabled</code></td>
<td><p>Specifies whether Amazon S3 should use an S3 Bucket Key for
object encryption with server-side encryption using AWS KMS (SSE-KMS).
Setting this header to <code>true</code> causes Amazon S3 to use an S3
Bucket Key for object encryption with SSE-KMS.</p>
<p>Specifying this header with an object action doesn’t affect
bucket-level settings for S3 Bucket Key.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_create_multipart_upload_:_RequestPayer">RequestPayer</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code id="s3_create_multipart_upload_:_Tagging">Tagging</code></td>
<td><p>The tag-set for the object. The tag-set must be encoded as URL
Query parameters.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_create_multipart_upload_:_ObjectLockMode">ObjectLockMode</code></td>
<td><p>Specifies the Object Lock mode that you want to apply to the
uploaded object.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_create_multipart_upload_:_ObjectLockRetainUntilDate">ObjectLockRetainUntilDate</code></td>
<td><p>Specifies the date and time when you want the Object Lock to
expire.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_create_multipart_upload_:_ObjectLockLegalHoldStatus">ObjectLockLegalHoldStatus</code></td>
<td><p>Specifies whether you want to apply a legal hold to the uploaded
object.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_create_multipart_upload_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
<td><p>The account ID of the expected bucket owner. If the bucket is
owned by a different account, the request fails with the HTTP status
code <code style="white-space: pre;">⁠403 Forbidden⁠</code> (access
denied).</p></td>
</tr>
<tr class="even">
<td><code
id="s3_create_multipart_upload_:_ChecksumAlgorithm">ChecksumAlgorithm</code></td>
<td><p>Indicates the algorithm you want Amazon S3 to use to create the
checksum for the object. For more information, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking
object integrity</a> in the <em>Amazon S3 User Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AbortDate = as.POSIXct(
        "2015-01-01"
      ),
      AbortRuleId = "string",
      Bucket = "string",
      Key = "string",
      UploadId = "string",
      ServerSideEncryption = "AES256"|"aws:kms",
      SSECustomerAlgorithm = "string",
      SSECustomerKeyMD5 = "string",
      SSEKMSKeyId = "string",
      SSEKMSEncryptionContext = "string",
      BucketKeyEnabled = TRUE|FALSE,
      RequestCharged = "requester",
      ChecksumAlgorithm = "CRC32"|"CRC32C"|"SHA1"|"SHA256"
    )

### Request syntax

    svc$create_multipart_upload(
      ACL = "private"|"public-read"|"public-read-write"|"authenticated-read"|"aws-exec-read"|"bucket-owner-read"|"bucket-owner-full-control",
      Bucket = "string",
      CacheControl = "string",
      ContentDisposition = "string",
      ContentEncoding = "string",
      ContentLanguage = "string",
      ContentType = "string",
      Expires = as.POSIXct(
        "2015-01-01"
      ),
      GrantFullControl = "string",
      GrantRead = "string",
      GrantReadACP = "string",
      GrantWriteACP = "string",
      Key = "string",
      Metadata = list(
        "string"
      ),
      ServerSideEncryption = "AES256"|"aws:kms",
      StorageClass = "STANDARD"|"REDUCED_REDUNDANCY"|"STANDARD_IA"|"ONEZONE_IA"|"INTELLIGENT_TIERING"|"GLACIER"|"DEEP_ARCHIVE"|"OUTPOSTS"|"GLACIER_IR"|"SNOW",
      WebsiteRedirectLocation = "string",
      SSECustomerAlgorithm = "string",
      SSECustomerKey = raw,
      SSECustomerKeyMD5 = "string",
      SSEKMSKeyId = "string",
      SSEKMSEncryptionContext = "string",
      BucketKeyEnabled = TRUE|FALSE,
      RequestPayer = "requester",
      Tagging = "string",
      ObjectLockMode = "GOVERNANCE"|"COMPLIANCE",
      ObjectLockRetainUntilDate = as.POSIXct(
        "2015-01-01"
      ),
      ObjectLockLegalHoldStatus = "ON"|"OFF",
      ExpectedBucketOwner = "string",
      ChecksumAlgorithm = "CRC32"|"CRC32C"|"SHA1"|"SHA256"
    )

### Examples

    ## Not run: 
    # The following example initiates a multipart upload.
    svc$create_multipart_upload(
      Bucket = "examplebucket",
      Key = "largeobject"
    )

    ## End(Not run)
