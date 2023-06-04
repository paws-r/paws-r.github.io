<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_copy_object</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a copy of an object that is already stored in Amazon S3

### Description

Creates a copy of an object that is already stored in Amazon S3.

You can store individual objects of up to 5 TB in Amazon S3. You create
a copy of your object up to 5 GB in size in a single atomic action using
this API. However, to copy an object greater than 5 GB, you must use the
multipart upload Upload Part - Copy (UploadPartCopy) API. For more
information, see [Copy Object Using the REST Multipart Upload
API](https://docs.aws.amazon.com/AmazonS3/latest/userguide/CopyingObjectsMPUapi.html).

All copy requests must be authenticated. Additionally, you must have
*read* access to the source object and *write* access to the destination
bucket. For more information, see [REST
Authentication](https://docs.aws.amazon.com/AmazonS3/latest/userguide/RESTAuthentication.html).
Both the Region that you want to copy the object from and the Region
that you want to copy the object to must be enabled for your account.

A copy request might return an error when Amazon S3 receives the copy
request or while Amazon S3 is copying the files. If the error occurs
before the copy action starts, you receive a standard Amazon S3 error.
If the error occurs during the copy operation, the error response is
embedded in the `⁠200 OK⁠` response. This means that a `⁠200 OK⁠` response
can contain either a success or an error. If you call the S3 API
directly, make sure to design your application to parse the contents of
the response and handle it appropriately. If you use Amazon Web Services
SDKs, SDKs handle this condition. The SDKs detect the embedded error and
apply error handling per your configuration settings (including
automatically retrying the request as appropriate). If the condition
persists, the SDKs throws an exception (or, for the SDKs that don't use
exceptions, they return the error).

If the copy is successful, you receive a response with information about
the copied object.

If the request is an HTTP 1.1 request, the response is chunk encoded. If
it were not, it would not contain the content-length, and you would need
to read the entire body.

The copy request charge is based on the storage class and Region that
you specify for the destination object. For pricing information, see
[Amazon S3 pricing](https://aws.amazon.com/s3/pricing/).

Amazon S3 transfer acceleration does not support cross-Region copies. If
you request a cross-Region copy using a transfer acceleration endpoint,
you get a 400 `⁠Bad Request⁠` error. For more information, see [Transfer
Acceleration](https://docs.aws.amazon.com/AmazonS3/latest/userguide/transfer-acceleration.html).

#### Metadata

When copying an object, you can preserve all metadata (default) or
specify new metadata. However, the ACL is not preserved and is set to
private for the user making the request. To override the default ACL
setting, specify a new ACL when generating a copy request. For more
information, see [Using
ACLs](https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html).

To specify whether you want the object metadata copied from the source
object or replaced with metadata provided in the request, you can
optionally add the `x-amz-metadata-directive` header. When you grant
permissions, you can use the `s3:x-amz-metadata-directive` condition key
to enforce certain metadata behavior when objects are uploaded. For more
information, see [Specifying Conditions in a
Policy](https://docs.aws.amazon.com/AmazonS3/latest/userguide/amazon-s3-policy-keys.html)
in the *Amazon S3 User Guide*. For a complete list of Amazon S3-specific
condition keys, see [Actions, Resources, and Condition Keys for Amazon
S3](https://docs.aws.amazon.com/AmazonS3/latest/userguide/list_amazons3.html).

`x-amz-website-redirect-location` is unique to each object and must be
specified in the request headers to copy the value.

#### x-amz-copy-source-if Headers

To only copy an object under certain conditions, such as whether the
`Etag` matches or whether the object was modified before or after a
specified date, use the following request parameters:

-   `⁠x-amz-copy-source-if-match⁠`

-   `⁠x-amz-copy-source-if-none-match⁠`

-   `⁠x-amz-copy-source-if-unmodified-since⁠`

-   `⁠x-amz-copy-source-if-modified-since⁠`

If both the `⁠x-amz-copy-source-if-match⁠` and
`⁠x-amz-copy-source-if-unmodified-since⁠` headers are present in the
request and evaluate as follows, Amazon S3 returns `⁠200 OK⁠` and copies
the data:

-   `⁠x-amz-copy-source-if-match⁠` condition evaluates to true

-   `⁠x-amz-copy-source-if-unmodified-since⁠` condition evaluates to false

If both the `⁠x-amz-copy-source-if-none-match⁠` and
`⁠x-amz-copy-source-if-modified-since⁠` headers are present in the request
and evaluate as follows, Amazon S3 returns the `⁠412 Precondition Failed⁠`
response code:

-   `⁠x-amz-copy-source-if-none-match⁠` condition evaluates to false

-   `⁠x-amz-copy-source-if-modified-since⁠` condition evaluates to true

All headers with the `⁠x-amz-⁠` prefix, including `x-amz-copy-source`,
must be signed.

#### Server-side encryption

Amazon S3 automatically encrypts all new objects that are copied to an
S3 bucket. When copying an object, if you don't specify encryption
information in your copy request, the encryption setting of the target
object is set to the default encryption configuration of the destination
bucket. By default, all buckets have a base level of encryption
configuration that uses server-side encryption with Amazon S3 managed
keys (SSE-S3). If the destination bucket has a default encryption
configuration that uses server-side encryption with an Key Management
Service (KMS) key (SSE-KMS), or a customer-provided encryption key
(SSE-C), Amazon S3 uses the corresponding KMS key, or a
customer-provided key to encrypt the target object copy.

When you perform a CopyObject operation, if you want to use a different
type of encryption setting for the target object, you can use other
appropriate encryption-related headers to encrypt the target object with
a KMS key, an Amazon S3 managed key, or a customer-provided key. With
server-side encryption, Amazon S3 encrypts your data as it writes it to
disks in its data centers and decrypts the data when you access it. If
the encryption setting in your request is different from the default
encryption configuration of the destination bucket, the encryption
setting in your request takes precedence. If the source object for the
copy is stored in Amazon S3 using SSE-C, you must provide the necessary
encryption information in your request so that Amazon S3 can decrypt the
object for copying. For more information about server-side encryption,
see [Using Server-Side
Encryption](https://docs.aws.amazon.com/AmazonS3/latest/userguide/serv-side-encryption.html).

If a target object uses SSE-KMS, you can enable an S3 Bucket Key for the
object. For more information, see [Amazon S3 Bucket
Keys](https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucket-key.html)
in the *Amazon S3 User Guide*.

#### Access Control List (ACL)-Specific Request Headers

When copying an object, you can optionally use headers to grant
ACL-based permissions. By default, all objects are private. Only the
owner has full access control. When adding a new object, you can grant
permissions to individual Amazon Web Services accounts or to predefined
groups defined by Amazon S3. These permissions are then added to the ACL
on the object. For more information, see [Access Control List (ACL)
Overview](https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html)
and [Managing ACLs Using the REST
API](https://docs.aws.amazon.com/AmazonS3/latest/userguide/managing-acls.html).

If the bucket that you're copying objects to uses the bucket owner
enforced setting for S3 Object Ownership, ACLs are disabled and no
longer affect permissions. Buckets that use this setting only accept PUT
requests that don't specify an ACL or PUT requests that specify bucket
owner full control ACLs, such as the `bucket-owner-full-control` canned
ACL or an equivalent form of this ACL expressed in the XML format.

For more information, see [Controlling ownership of objects and
disabling
ACLs](https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html)
in the *Amazon S3 User Guide*.

If your bucket uses the bucket owner enforced setting for Object
Ownership, all objects written to the bucket by any account will be
owned by the bucket owner.

#### Checksums

When copying an object, if it has a checksum, that checksum will be
copied to the new object by default. When you copy the object over, you
may optionally specify a different checksum algorithm to use with the
`x-amz-checksum-algorithm` header.

#### Storage Class Options

You can use the `copy_object` action to change the storage class of an
object that is already stored in Amazon S3 using the `StorageClass`
parameter. For more information, see [Storage
Classes](https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage-class-intro.html)
in the *Amazon S3 User Guide*.

If the source object's storage class is GLACIER, you must restore a copy
of this object before you can use it as a source object for the copy
operation. For more information, see `restore_object`. For more
information, see [Copying
Objects](https://docs.aws.amazon.com/AmazonS3/latest/userguide/copy-object.html).

#### Versioning

By default, `x-amz-copy-source` identifies the current version of an
object to copy. If the current version is a delete marker, Amazon S3
behaves as if the object was deleted. To copy a different version, use
the `versionId` subresource.

If you enable versioning on the target bucket, Amazon S3 generates a
unique version ID for the object being copied. This version ID is
different from the version ID of the source object. Amazon S3 returns
the version ID of the copied object in the `x-amz-version-id` response
header in the response.

If you do not enable versioning or suspend it on the target bucket, the
version ID that Amazon S3 generates is always null.

The following operations are related to `copy_object`:

-   `put_object`

-   `get_object`

### Usage

    s3_copy_object(ACL, Bucket, CacheControl, ChecksumAlgorithm,
      ContentDisposition, ContentEncoding, ContentLanguage, ContentType,
      CopySource, CopySourceIfMatch, CopySourceIfModifiedSince,
      CopySourceIfNoneMatch, CopySourceIfUnmodifiedSince, Expires,
      GrantFullControl, GrantRead, GrantReadACP, GrantWriteACP, Key, Metadata,
      MetadataDirective, TaggingDirective, ServerSideEncryption, StorageClass,
      WebsiteRedirectLocation, SSECustomerAlgorithm, SSECustomerKey,
      SSECustomerKeyMD5, SSEKMSKeyId, SSEKMSEncryptionContext,
      BucketKeyEnabled, CopySourceSSECustomerAlgorithm,
      CopySourceSSECustomerKey, CopySourceSSECustomerKeyMD5, RequestPayer,
      Tagging, ObjectLockMode, ObjectLockRetainUntilDate,
      ObjectLockLegalHoldStatus, ExpectedBucketOwner,
      ExpectedSourceBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_copy_object_:_ACL">ACL</code></td>
<td><p>The canned ACL to apply to the object.</p>
<p>This action is not supported by Amazon S3 on Outposts.</p></td>
</tr>
<tr class="even">
<td><code id="s3_copy_object_:_Bucket">Bucket</code></td>
<td><p>[required] The name of the destination bucket.</p>
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
<td><code id="s3_copy_object_:_CacheControl">CacheControl</code></td>
<td><p>Specifies caching behavior along the request/reply
chain.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_copy_object_:_ChecksumAlgorithm">ChecksumAlgorithm</code></td>
<td><p>Indicates the algorithm you want Amazon S3 to use to create the
checksum for the object. For more information, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking
object integrity</a> in the <em>Amazon S3 User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_copy_object_:_ContentDisposition">ContentDisposition</code></td>
<td><p>Specifies presentational information for the object.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_copy_object_:_ContentEncoding">ContentEncoding</code></td>
<td><p>Specifies what content encodings have been applied to the object
and thus what decoding mechanisms must be applied to obtain the
media-type referenced by the Content-Type header field.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_copy_object_:_ContentLanguage">ContentLanguage</code></td>
<td><p>The language the content is in.</p></td>
</tr>
<tr class="even">
<td><code id="s3_copy_object_:_ContentType">ContentType</code></td>
<td><p>A standard MIME type describing the format of the object
data.</p></td>
</tr>
<tr class="odd">
<td><code id="s3_copy_object_:_CopySource">CopySource</code></td>
<td><p>[required] Specifies the source object for the copy operation.
You specify the value in one of two formats, depending on whether you
want to access the source object through an <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points.html">access
point</a>:</p>
<ul>
<li><p>For objects not accessed through an access point, specify the
name of the source bucket and the key of the source object, separated by
a slash (/). For example, to copy the object
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
<tr class="even">
<td><code
id="s3_copy_object_:_CopySourceIfMatch">CopySourceIfMatch</code></td>
<td><p>Copies the object if its entity tag (ETag) matches the specified
tag.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_copy_object_:_CopySourceIfModifiedSince">CopySourceIfModifiedSince</code></td>
<td><p>Copies the object if it has been modified since the specified
time.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_copy_object_:_CopySourceIfNoneMatch">CopySourceIfNoneMatch</code></td>
<td><p>Copies the object if its entity tag (ETag) is different than the
specified ETag.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_copy_object_:_CopySourceIfUnmodifiedSince">CopySourceIfUnmodifiedSince</code></td>
<td><p>Copies the object if it hasn't been modified since the specified
time.</p></td>
</tr>
<tr class="even">
<td><code id="s3_copy_object_:_Expires">Expires</code></td>
<td><p>The date and time at which the object is no longer
cacheable.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_copy_object_:_GrantFullControl">GrantFullControl</code></td>
<td><p>Gives the grantee READ, READ_ACP, and WRITE_ACP permissions on
the object.</p>
<p>This action is not supported by Amazon S3 on Outposts.</p></td>
</tr>
<tr class="even">
<td><code id="s3_copy_object_:_GrantRead">GrantRead</code></td>
<td><p>Allows grantee to read the object data and its metadata.</p>
<p>This action is not supported by Amazon S3 on Outposts.</p></td>
</tr>
<tr class="odd">
<td><code id="s3_copy_object_:_GrantReadACP">GrantReadACP</code></td>
<td><p>Allows grantee to read the object ACL.</p>
<p>This action is not supported by Amazon S3 on Outposts.</p></td>
</tr>
<tr class="even">
<td><code id="s3_copy_object_:_GrantWriteACP">GrantWriteACP</code></td>
<td><p>Allows grantee to write the ACL for the applicable object.</p>
<p>This action is not supported by Amazon S3 on Outposts.</p></td>
</tr>
<tr class="odd">
<td><code id="s3_copy_object_:_Key">Key</code></td>
<td><p>[required] The key of the destination object.</p></td>
</tr>
<tr class="even">
<td><code id="s3_copy_object_:_Metadata">Metadata</code></td>
<td><p>A map of metadata to store with the object in S3.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_copy_object_:_MetadataDirective">MetadataDirective</code></td>
<td><p>Specifies whether the metadata is copied from the source object
or replaced with metadata provided in the request.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_copy_object_:_TaggingDirective">TaggingDirective</code></td>
<td><p>Specifies whether the object tag-set are copied from the source
object or replaced with tag-set provided in the request.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_copy_object_:_ServerSideEncryption">ServerSideEncryption</code></td>
<td><p>The server-side encryption algorithm used when storing this
object in Amazon S3 (for example, AES256,
<code>aws:kms</code>).</p></td>
</tr>
<tr class="even">
<td><code id="s3_copy_object_:_StorageClass">StorageClass</code></td>
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
id="s3_copy_object_:_WebsiteRedirectLocation">WebsiteRedirectLocation</code></td>
<td><p>If the bucket is configured as a website, redirects requests for
this object to another object in the same bucket or to an external URL.
Amazon S3 stores the value of this header in the object metadata. This
value is unique to each object and is not copied when using the
<code>x-amz-metadata-directive</code> header. Instead, you may opt to
provide this header in combination with the directive.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_copy_object_:_SSECustomerAlgorithm">SSECustomerAlgorithm</code></td>
<td><p>Specifies the algorithm to use to when encrypting the object (for
example, AES256).</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_copy_object_:_SSECustomerKey">SSECustomerKey</code></td>
<td><p>Specifies the customer-provided encryption key for Amazon S3 to
use in encrypting data. This value is used to store the object and then
it is discarded; Amazon S3 does not store the encryption key. The key
must be appropriate for use with the algorithm specified in the
<code>x-amz-server-side-encryption-customer-algorithm</code>
header.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_copy_object_:_SSECustomerKeyMD5">SSECustomerKeyMD5</code></td>
<td><p>Specifies the 128-bit MD5 digest of the encryption key according
to RFC 1321. Amazon S3 uses this header for a message integrity check to
ensure that the encryption key was transmitted without error.</p></td>
</tr>
<tr class="odd">
<td><code id="s3_copy_object_:_SSEKMSKeyId">SSEKMSKeyId</code></td>
<td><p>Specifies the Amazon Web Services KMS key ID to use for object
encryption. All GET and PUT requests for an object protected by Amazon
Web Services KMS will fail if not made via SSL or using SigV4. For
information about configuring using any of the officially supported
Amazon Web Services SDKs and Amazon Web Services CLI, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/UsingAWSSDK.html#specify-signature-version">Specifying
the Signature Version in Request Authentication</a> in the <em>Amazon S3
User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_copy_object_:_SSEKMSEncryptionContext">SSEKMSEncryptionContext</code></td>
<td><p>Specifies the Amazon Web Services KMS Encryption Context to use
for object encryption. The value of this header is a base64-encoded
UTF-8 string holding JSON with the encryption context key-value
pairs.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_copy_object_:_BucketKeyEnabled">BucketKeyEnabled</code></td>
<td><p>Specifies whether Amazon S3 should use an S3 Bucket Key for
object encryption with server-side encryption using AWS KMS (SSE-KMS).
Setting this header to <code>true</code> causes Amazon S3 to use an S3
Bucket Key for object encryption with SSE-KMS.</p>
<p>Specifying this header with a COPY action doesn’t affect bucket-level
settings for S3 Bucket Key.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_copy_object_:_CopySourceSSECustomerAlgorithm">CopySourceSSECustomerAlgorithm</code></td>
<td><p>Specifies the algorithm to use when decrypting the source object
(for example, AES256).</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_copy_object_:_CopySourceSSECustomerKey">CopySourceSSECustomerKey</code></td>
<td><p>Specifies the customer-provided encryption key for Amazon S3 to
use to decrypt the source object. The encryption key provided in this
header must be one that was used when the source object was
created.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_copy_object_:_CopySourceSSECustomerKeyMD5">CopySourceSSECustomerKeyMD5</code></td>
<td><p>Specifies the 128-bit MD5 digest of the encryption key according
to RFC 1321. Amazon S3 uses this header for a message integrity check to
ensure that the encryption key was transmitted without error.</p></td>
</tr>
<tr class="odd">
<td><code id="s3_copy_object_:_RequestPayer">RequestPayer</code></td>
<td></td>
</tr>
<tr class="even">
<td><code id="s3_copy_object_:_Tagging">Tagging</code></td>
<td><p>The tag-set for the object destination object this value must be
used in conjunction with the <code>TaggingDirective</code>. The tag-set
must be encoded as URL Query parameters.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_copy_object_:_ObjectLockMode">ObjectLockMode</code></td>
<td><p>The Object Lock mode that you want to apply to the copied
object.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_copy_object_:_ObjectLockRetainUntilDate">ObjectLockRetainUntilDate</code></td>
<td><p>The date and time when you want the copied object's Object Lock
to expire.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_copy_object_:_ObjectLockLegalHoldStatus">ObjectLockLegalHoldStatus</code></td>
<td><p>Specifies whether you want to apply a legal hold to the copied
object.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_copy_object_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
<td><p>The account ID of the expected destination bucket owner. If the
destination bucket is owned by a different account, the request fails
with the HTTP status code <code
style="white-space: pre;">⁠403 Forbidden⁠</code> (access denied).</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_copy_object_:_ExpectedSourceBucketOwner">ExpectedSourceBucketOwner</code></td>
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
      CopyObjectResult = list(
        ETag = "string",
        LastModified = as.POSIXct(
          "2015-01-01"
        ),
        ChecksumCRC32 = "string",
        ChecksumCRC32C = "string",
        ChecksumSHA1 = "string",
        ChecksumSHA256 = "string"
      ),
      Expiration = "string",
      CopySourceVersionId = "string",
      VersionId = "string",
      ServerSideEncryption = "AES256"|"aws:kms",
      SSECustomerAlgorithm = "string",
      SSECustomerKeyMD5 = "string",
      SSEKMSKeyId = "string",
      SSEKMSEncryptionContext = "string",
      BucketKeyEnabled = TRUE|FALSE,
      RequestCharged = "requester"
    )

### Request syntax

    svc$copy_object(
      ACL = "private"|"public-read"|"public-read-write"|"authenticated-read"|"aws-exec-read"|"bucket-owner-read"|"bucket-owner-full-control",
      Bucket = "string",
      CacheControl = "string",
      ChecksumAlgorithm = "CRC32"|"CRC32C"|"SHA1"|"SHA256",
      ContentDisposition = "string",
      ContentEncoding = "string",
      ContentLanguage = "string",
      ContentType = "string",
      CopySource = "string",
      CopySourceIfMatch = "string",
      CopySourceIfModifiedSince = as.POSIXct(
        "2015-01-01"
      ),
      CopySourceIfNoneMatch = "string",
      CopySourceIfUnmodifiedSince = as.POSIXct(
        "2015-01-01"
      ),
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
      MetadataDirective = "COPY"|"REPLACE",
      TaggingDirective = "COPY"|"REPLACE",
      ServerSideEncryption = "AES256"|"aws:kms",
      StorageClass = "STANDARD"|"REDUCED_REDUNDANCY"|"STANDARD_IA"|"ONEZONE_IA"|"INTELLIGENT_TIERING"|"GLACIER"|"DEEP_ARCHIVE"|"OUTPOSTS"|"GLACIER_IR"|"SNOW",
      WebsiteRedirectLocation = "string",
      SSECustomerAlgorithm = "string",
      SSECustomerKey = raw,
      SSECustomerKeyMD5 = "string",
      SSEKMSKeyId = "string",
      SSEKMSEncryptionContext = "string",
      BucketKeyEnabled = TRUE|FALSE,
      CopySourceSSECustomerAlgorithm = "string",
      CopySourceSSECustomerKey = raw,
      CopySourceSSECustomerKeyMD5 = "string",
      RequestPayer = "requester",
      Tagging = "string",
      ObjectLockMode = "GOVERNANCE"|"COMPLIANCE",
      ObjectLockRetainUntilDate = as.POSIXct(
        "2015-01-01"
      ),
      ObjectLockLegalHoldStatus = "ON"|"OFF",
      ExpectedBucketOwner = "string",
      ExpectedSourceBucketOwner = "string"
    )

### Examples

    ## Not run: 
    # The following example copies an object from one bucket to another.
    svc$copy_object(
      Bucket = "destinationbucket",
      CopySource = "/sourcebucket/HappyFacejpg",
      Key = "HappyFaceCopyjpg"
    )

    ## End(Not run)
