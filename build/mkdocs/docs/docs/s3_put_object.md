<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_put_object</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds an object to a bucket

### Description

Adds an object to a bucket. You must have WRITE permissions on a bucket
to add an object to it.

Amazon S3 never adds partial objects; if you receive a success response,
Amazon S3 added the entire object to the bucket. You cannot use
`put_object` to only update a single piece of metadata for an existing
object. You must put the entire object with updated metadata if you want
to update some values.

Amazon S3 is a distributed system. If it receives multiple write
requests for the same object simultaneously, it overwrites all but the
last object written. To prevent objects from being deleted or
overwritten, you can use [Amazon S3 Object
Lock](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lock.html).

To ensure that data is not corrupted traversing the network, use the
`Content-MD5` header. When you use this header, Amazon S3 checks the
object against the provided MD5 value and, if they do not match, returns
an error. Additionally, you can calculate the MD5 while putting an
object to Amazon S3 and compare the returned ETag to the calculated MD5
value.

-   To successfully complete the `put_object` request, you must have the
    `s3:PutObject` in your IAM permissions.

-   To successfully change the objects acl of your `put_object` request,
    you must have the `s3:PutObjectAcl` in your IAM permissions.

-   To successfully set the tag-set with your `put_object` request, you
    must have the `s3:PutObjectTagging` in your IAM permissions.

-   The `Content-MD5` header is required for any request to upload an
    object with a retention period configured using Amazon S3 Object
    Lock. For more information about Amazon S3 Object Lock, see [Amazon
    S3 Object Lock
    Overview](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lock-overview.html)
    in the *Amazon S3 User Guide*.

You have three mutually exclusive options to protect data using
server-side encryption in Amazon S3, depending on how you choose to
manage the encryption keys. Specifically, the encryption key options are
Amazon S3 managed keys (SSE-S3), Amazon Web Services KMS keys (SSE-KMS),
and customer-provided keys (SSE-C). Amazon S3 encrypts data with
server-side encryption by using Amazon S3 managed keys (SSE-S3) by
default. You can optionally tell Amazon S3 to encrypt data at by rest
using server-side encryption with other key options. For more
information, see [Using Server-Side
Encryption](https://docs.aws.amazon.com/AmazonS3/latest/userguide/UsingServerSideEncryption.html).

When adding a new object, you can use headers to grant ACL-based
permissions to individual Amazon Web Services accounts or to predefined
groups defined by Amazon S3. These permissions are then added to the ACL
on the object. By default, all objects are private. Only the owner has
full access control. For more information, see [Access Control List
(ACL)
Overview](https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html)
and [Managing ACLs Using the REST
API](https://docs.aws.amazon.com/AmazonS3/latest/userguide/managing-acls.html).

If the bucket that you're uploading objects to uses the bucket owner
enforced setting for S3 Object Ownership, ACLs are disabled and no
longer affect permissions. Buckets that use this setting only accept PUT
requests that don't specify an ACL or PUT requests that specify bucket
owner full control ACLs, such as the `bucket-owner-full-control` canned
ACL or an equivalent form of this ACL expressed in the XML format. PUT
requests that contain other ACLs (for example, custom grants to certain
Amazon Web Services accounts) fail and return a `400` error with the
error code `AccessControlListNotSupported`. For more information, see
[Controlling ownership of objects and disabling
ACLs](https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html)
in the *Amazon S3 User Guide*.

If your bucket uses the bucket owner enforced setting for Object
Ownership, all objects written to the bucket by any account will be
owned by the bucket owner.

By default, Amazon S3 uses the STANDARD Storage Class to store newly
created objects. The STANDARD storage class provides high durability and
high availability. Depending on performance needs, you can specify a
different Storage Class. Amazon S3 on Outposts only uses the OUTPOSTS
Storage Class. For more information, see [Storage
Classes](https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage-class-intro.html)
in the *Amazon S3 User Guide*.

If you enable versioning for a bucket, Amazon S3 automatically generates
a unique version ID for the object being stored. Amazon S3 returns this
ID in the response. When you enable versioning for a bucket, if Amazon
S3 receives multiple write requests for the same object simultaneously,
it stores all of the objects. For more information about versioning, see
[Adding Objects to Versioning-Enabled
Buckets](https://docs.aws.amazon.com/AmazonS3/latest/userguide/AddingObjectstoVersioningEnabledBuckets.html).
For information about returning the versioning state of a bucket, see
`get_bucket_versioning`.

For more information about related Amazon S3 APIs, see the following:

-   `copy_object`

-   `delete_object`

### Usage

    s3_put_object(ACL, Body, Bucket, CacheControl, ContentDisposition,
      ContentEncoding, ContentLanguage, ContentLength, ContentMD5,
      ContentType, ChecksumAlgorithm, ChecksumCRC32, ChecksumCRC32C,
      ChecksumSHA1, ChecksumSHA256, Expires, GrantFullControl, GrantRead,
      GrantReadACP, GrantWriteACP, Key, Metadata, ServerSideEncryption,
      StorageClass, WebsiteRedirectLocation, SSECustomerAlgorithm,
      SSECustomerKey, SSECustomerKeyMD5, SSEKMSKeyId, SSEKMSEncryptionContext,
      BucketKeyEnabled, RequestPayer, Tagging, ObjectLockMode,
      ObjectLockRetainUntilDate, ObjectLockLegalHoldStatus,
      ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_put_object_:_ACL">ACL</code></td>
<td><p>The canned ACL to apply to the object. For more information, see
<a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html#CannedACL">Canned
ACL</a>.</p>
<p>This action is not supported by Amazon S3 on Outposts.</p></td>
</tr>
<tr class="even">
<td><code id="s3_put_object_:_Body">Body</code></td>
<td><p>Object data.</p></td>
</tr>
<tr class="odd">
<td><code id="s3_put_object_:_Bucket">Bucket</code></td>
<td><p>[required] The bucket name to which the PUT action was
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
<td><code id="s3_put_object_:_CacheControl">CacheControl</code></td>
<td><p>Can be used to specify caching behavior along the request/reply
chain. For more information, see <a
href="https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9">http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_put_object_:_ContentDisposition">ContentDisposition</code></td>
<td><p>Specifies presentational information for the object. For more
information, see <a
href="https://www.rfc-editor.org/rfc/rfc6266#section-4">https://www.rfc-editor.org/rfc/rfc6266#section-4</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_put_object_:_ContentEncoding">ContentEncoding</code></td>
<td><p>Specifies what content encodings have been applied to the object
and thus what decoding mechanisms must be applied to obtain the
media-type referenced by the Content-Type header field. For more
information, see <a
href="https://www.rfc-editor.org/rfc/rfc9110.html#field.content-encoding">https://www.rfc-editor.org/rfc/rfc9110.html#field.content-encoding</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_put_object_:_ContentLanguage">ContentLanguage</code></td>
<td><p>The language the content is in.</p></td>
</tr>
<tr class="even">
<td><code id="s3_put_object_:_ContentLength">ContentLength</code></td>
<td><p>Size of the body in bytes. This parameter is useful when the size
of the body cannot be determined automatically. For more information,
see <a
href="https://www.rfc-editor.org/rfc/rfc9110.html#name-content-length">https://www.rfc-editor.org/rfc/rfc9110.html#name-content-length</a>.</p></td>
</tr>
<tr class="odd">
<td><code id="s3_put_object_:_ContentMD5">ContentMD5</code></td>
<td><p>The base64-encoded 128-bit MD5 digest of the message (without the
headers) according to RFC 1864. This header can be used as a message
integrity check to verify that the data is the same data that was
originally sent. Although it is optional, we recommend using the
Content-MD5 mechanism as an end-to-end integrity check. For more
information about REST request authentication, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/RESTAuthentication.html">REST
Authentication</a>.</p></td>
</tr>
<tr class="even">
<td><code id="s3_put_object_:_ContentType">ContentType</code></td>
<td><p>A standard MIME type describing the format of the contents. For
more information, see <a
href="https://www.rfc-editor.org/rfc/rfc9110.html#name-content-type">https://www.rfc-editor.org/rfc/rfc9110.html#name-content-type</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_put_object_:_ChecksumAlgorithm">ChecksumAlgorithm</code></td>
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
<td><code id="s3_put_object_:_ChecksumCRC32">ChecksumCRC32</code></td>
<td><p>This header can be used as a data integrity check to verify that
the data received is the same data that was originally sent. This header
specifies the base64-encoded, 32-bit CRC32 checksum of the object. For
more information, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking
object integrity</a> in the <em>Amazon S3 User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code id="s3_put_object_:_ChecksumCRC32C">ChecksumCRC32C</code></td>
<td><p>This header can be used as a data integrity check to verify that
the data received is the same data that was originally sent. This header
specifies the base64-encoded, 32-bit CRC32C checksum of the object. For
more information, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking
object integrity</a> in the <em>Amazon S3 User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code id="s3_put_object_:_ChecksumSHA1">ChecksumSHA1</code></td>
<td><p>This header can be used as a data integrity check to verify that
the data received is the same data that was originally sent. This header
specifies the base64-encoded, 160-bit SHA-1 digest of the object. For
more information, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking
object integrity</a> in the <em>Amazon S3 User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code id="s3_put_object_:_ChecksumSHA256">ChecksumSHA256</code></td>
<td><p>This header can be used as a data integrity check to verify that
the data received is the same data that was originally sent. This header
specifies the base64-encoded, 256-bit SHA-256 digest of the object. For
more information, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking
object integrity</a> in the <em>Amazon S3 User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code id="s3_put_object_:_Expires">Expires</code></td>
<td><p>The date and time at which the object is no longer cacheable. For
more information, see <a
href="https://www.rfc-editor.org/rfc/rfc7234#section-5.3">https://www.rfc-editor.org/rfc/rfc7234#section-5.3</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_put_object_:_GrantFullControl">GrantFullControl</code></td>
<td><p>Gives the grantee READ, READ_ACP, and WRITE_ACP permissions on
the object.</p>
<p>This action is not supported by Amazon S3 on Outposts.</p></td>
</tr>
<tr class="even">
<td><code id="s3_put_object_:_GrantRead">GrantRead</code></td>
<td><p>Allows grantee to read the object data and its metadata.</p>
<p>This action is not supported by Amazon S3 on Outposts.</p></td>
</tr>
<tr class="odd">
<td><code id="s3_put_object_:_GrantReadACP">GrantReadACP</code></td>
<td><p>Allows grantee to read the object ACL.</p>
<p>This action is not supported by Amazon S3 on Outposts.</p></td>
</tr>
<tr class="even">
<td><code id="s3_put_object_:_GrantWriteACP">GrantWriteACP</code></td>
<td><p>Allows grantee to write the ACL for the applicable object.</p>
<p>This action is not supported by Amazon S3 on Outposts.</p></td>
</tr>
<tr class="odd">
<td><code id="s3_put_object_:_Key">Key</code></td>
<td><p>[required] Object key for which the PUT action was
initiated.</p></td>
</tr>
<tr class="even">
<td><code id="s3_put_object_:_Metadata">Metadata</code></td>
<td><p>A map of metadata to store with the object in S3.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_put_object_:_ServerSideEncryption">ServerSideEncryption</code></td>
<td><p>The server-side encryption algorithm used when storing this
object in Amazon S3 (for example, AES256,
<code>aws:kms</code>).</p></td>
</tr>
<tr class="even">
<td><code id="s3_put_object_:_StorageClass">StorageClass</code></td>
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
id="s3_put_object_:_WebsiteRedirectLocation">WebsiteRedirectLocation</code></td>
<td><p>If the bucket is configured as a website, redirects requests for
this object to another object in the same bucket or to an external URL.
Amazon S3 stores the value of this header in the object metadata. For
information about object metadata, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/UsingMetadata.html">Object
Key and Metadata</a>.</p>
<p>In the following example, the request header sets the redirect to an
object (anotherPage.html) in the same bucket:</p>
<p><code
style="white-space: pre;">⁠x-amz-website-redirect-location: /anotherPage.html⁠</code></p>
<p>In the following example, the request header sets the object redirect
to another website:</p>
<p><code
style="white-space: pre;">⁠x-amz-website-redirect-location: http://www.example.com/⁠</code></p>
<p>For more information about website hosting in Amazon S3, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/WebsiteHosting.html">Hosting
Websites on Amazon S3</a> and <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/how-to-page-redirect.html">How
to Configure Website Page Redirects</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_put_object_:_SSECustomerAlgorithm">SSECustomerAlgorithm</code></td>
<td><p>Specifies the algorithm to use to when encrypting the object (for
example, AES256).</p></td>
</tr>
<tr class="odd">
<td><code id="s3_put_object_:_SSECustomerKey">SSECustomerKey</code></td>
<td><p>Specifies the customer-provided encryption key for Amazon S3 to
use in encrypting data. This value is used to store the object and then
it is discarded; Amazon S3 does not store the encryption key. The key
must be appropriate for use with the algorithm specified in the
<code>x-amz-server-side-encryption-customer-algorithm</code>
header.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_put_object_:_SSECustomerKeyMD5">SSECustomerKeyMD5</code></td>
<td><p>Specifies the 128-bit MD5 digest of the encryption key according
to RFC 1321. Amazon S3 uses this header for a message integrity check to
ensure that the encryption key was transmitted without error.</p></td>
</tr>
<tr class="odd">
<td><code id="s3_put_object_:_SSEKMSKeyId">SSEKMSKeyId</code></td>
<td><p>If <code>x-amz-server-side-encryption</code> has a valid value of
<code>aws:kms</code>, this header specifies the ID of the Amazon Web
Services Key Management Service (Amazon Web Services KMS) symmetric
encryption customer managed key that was used for the object. If you
specify <code>x-amz-server-side-encryption:aws:kms</code>, but do not
provide<code> x-amz-server-side-encryption-aws-kms-key-id</code>, Amazon
S3 uses the Amazon Web Services managed key to protect the data. If the
KMS key does not exist in the same account issuing the command, you must
use the full ARN and not just the ID.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_put_object_:_SSEKMSEncryptionContext">SSEKMSEncryptionContext</code></td>
<td><p>Specifies the Amazon Web Services KMS Encryption Context to use
for object encryption. The value of this header is a base64-encoded
UTF-8 string holding JSON with the encryption context key-value pairs.
This value is stored as object metadata and automatically gets passed on
to Amazon Web Services KMS for future <code>get_object</code> or
<code>copy_object</code> operations on this object.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_put_object_:_BucketKeyEnabled">BucketKeyEnabled</code></td>
<td><p>Specifies whether Amazon S3 should use an S3 Bucket Key for
object encryption with server-side encryption using AWS KMS (SSE-KMS).
Setting this header to <code>true</code> causes Amazon S3 to use an S3
Bucket Key for object encryption with SSE-KMS.</p>
<p>Specifying this header with a PUT action doesn’t affect bucket-level
settings for S3 Bucket Key.</p></td>
</tr>
<tr class="even">
<td><code id="s3_put_object_:_RequestPayer">RequestPayer</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code id="s3_put_object_:_Tagging">Tagging</code></td>
<td><p>The tag-set for the object. The tag-set must be encoded as URL
Query parameters. (For example, "Key1=Value1")</p></td>
</tr>
<tr class="even">
<td><code id="s3_put_object_:_ObjectLockMode">ObjectLockMode</code></td>
<td><p>The Object Lock mode that you want to apply to this
object.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_put_object_:_ObjectLockRetainUntilDate">ObjectLockRetainUntilDate</code></td>
<td><p>The date and time when you want this object's Object Lock to
expire. Must be formatted as a timestamp parameter.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_put_object_:_ObjectLockLegalHoldStatus">ObjectLockLegalHoldStatus</code></td>
<td><p>Specifies whether a legal hold will be applied to this object.
For more information about S3 Object Lock, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lock.html">Object
Lock</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_put_object_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
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
      Expiration = "string",
      ETag = "string",
      ChecksumCRC32 = "string",
      ChecksumCRC32C = "string",
      ChecksumSHA1 = "string",
      ChecksumSHA256 = "string",
      ServerSideEncryption = "AES256"|"aws:kms",
      VersionId = "string",
      SSECustomerAlgorithm = "string",
      SSECustomerKeyMD5 = "string",
      SSEKMSKeyId = "string",
      SSEKMSEncryptionContext = "string",
      BucketKeyEnabled = TRUE|FALSE,
      RequestCharged = "requester"
    )

### Request syntax

    svc$put_object(
      ACL = "private"|"public-read"|"public-read-write"|"authenticated-read"|"aws-exec-read"|"bucket-owner-read"|"bucket-owner-full-control",
      Body = raw,
      Bucket = "string",
      CacheControl = "string",
      ContentDisposition = "string",
      ContentEncoding = "string",
      ContentLanguage = "string",
      ContentLength = 123,
      ContentMD5 = "string",
      ContentType = "string",
      ChecksumAlgorithm = "CRC32"|"CRC32C"|"SHA1"|"SHA256",
      ChecksumCRC32 = "string",
      ChecksumCRC32C = "string",
      ChecksumSHA1 = "string",
      ChecksumSHA256 = "string",
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
      ExpectedBucketOwner = "string"
    )

### Examples

    ## Not run: 
    # The following example uploads an object. The request specifies optional
    # object tags. The bucket is versioned, therefore S3 returns version ID of
    # the newly created object.
    svc$put_object(
      Body = "c:\\HappyFace.jpg",
      Bucket = "examplebucket",
      Key = "HappyFace.jpg",
      Tagging = "key1=value1&key2=value2"
    )

    # The following example uploads and object. The request specifies optional
    # canned ACL (access control list) to all READ access to authenticated
    # users. If the bucket is versioning enabled, S3 returns version ID in
    # response.
    svc$put_object(
      ACL = "authenticated-read",
      Body = "filetoupload",
      Bucket = "examplebucket",
      Key = "exampleobject"
    )

    # The following example uploads an object. The request specifies the
    # optional server-side encryption option. The request also specifies
    # optional object tags. If the bucket is versioning enabled, S3 returns
    # version ID in response.
    svc$put_object(
      Body = "filetoupload",
      Bucket = "examplebucket",
      Key = "exampleobject",
      ServerSideEncryption = "AES256",
      Tagging = "key1=value1&key2=value2"
    )

    # The following example creates an object. If the bucket is versioning
    # enabled, S3 returns version ID in response.
    svc$put_object(
      Body = "filetoupload",
      Bucket = "examplebucket",
      Key = "objectkey"
    )

    # The following example uploads an object to a versioning-enabled bucket.
    # The source file is specified using Windows file syntax. S3 returns
    # VersionId of the newly created object.
    svc$put_object(
      Body = "HappyFace.jpg",
      Bucket = "examplebucket",
      Key = "HappyFace.jpg"
    )

    # The following example uploads an object. The request specifies optional
    # request headers to directs S3 to use specific storage class and use
    # server-side encryption.
    svc$put_object(
      Body = "HappyFace.jpg",
      Bucket = "examplebucket",
      Key = "HappyFace.jpg",
      ServerSideEncryption = "AES256",
      StorageClass = "STANDARD_IA"
    )

    # The following example creates an object. The request also specifies
    # optional metadata. If the bucket is versioning enabled, S3 returns
    # version ID in response.
    svc$put_object(
      Body = "filetoupload",
      Bucket = "examplebucket",
      Key = "exampleobject",
      Metadata = list(
        metadata1 = "value1",
        metadata2 = "value2"
      )
    )

    ## End(Not run)
