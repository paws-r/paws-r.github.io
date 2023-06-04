<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_get_object</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves objects from Amazon S3

### Description

Retrieves objects from Amazon S3. To use `GET`, you must have `READ`
access to the object. If you grant `READ` access to the anonymous user,
you can return the object without using an authorization header.

An Amazon S3 bucket has no directory hierarchy such as you would find in
a typical computer file system. You can, however, create a logical
hierarchy by using object key names that imply a folder structure. For
example, instead of naming an object `sample.jpg`, you can name it
`photos/2006/February/sample.jpg`.

To get an object from such a logical hierarchy, specify the full key
name for the object in the `GET` operation. For a virtual hosted-style
request example, if you have the object
`photos/2006/February/sample.jpg`, specify the resource as
`⁠/photos/2006/February/sample.jpg⁠`. For a path-style request example, if
you have the object `photos/2006/February/sample.jpg` in the bucket
named `examplebucket`, specify the resource as
`⁠/examplebucket/photos/2006/February/sample.jpg⁠`. For more information
about request types, see [HTTP Host Header Bucket
Specification](https://docs.aws.amazon.com/AmazonS3/latest/userguide/VirtualHosting.html#VirtualHostingSpecifyBucket).

For more information about returning the ACL of an object, see
`get_object_acl`.

If the object you are retrieving is stored in the S3 Glacier or S3
Glacier Deep Archive storage class, or S3 Intelligent-Tiering Archive or
S3 Intelligent-Tiering Deep Archive tiers, before you can retrieve the
object you must first restore a copy using `restore_object`. Otherwise,
this action returns an `InvalidObjectState` error. For information about
restoring archived objects, see [Restoring Archived
Objects](https://docs.aws.amazon.com/AmazonS3/latest/userguide/restoring-objects.html).

Encryption request headers, like `x-amz-server-side-encryption`, should
not be sent for GET requests if your object uses server-side encryption
with KMS keys (SSE-KMS) or server-side encryption with Amazon S3–managed
encryption keys (SSE-S3). If your object does use these types of keys,
you’ll get an HTTP 400 BadRequest error.

If you encrypt an object by using server-side encryption with
customer-provided encryption keys (SSE-C) when you store the object in
Amazon S3, then when you GET the object, you must use the following
headers:

-   x-amz-server-side-encryption-customer-algorithm

-   x-amz-server-side-encryption-customer-key

-   x-amz-server-side-encryption-customer-key-MD5

For more information about SSE-C, see [Server-Side Encryption (Using
Customer-Provided Encryption
Keys)](https://docs.aws.amazon.com/AmazonS3/latest/userguide/ServerSideEncryptionCustomerKeys.html).

Assuming you have the relevant permission to read object tags, the
response also returns the `x-amz-tagging-count` header that provides the
count of number of tags associated with the object. You can use
`get_object_tagging` to retrieve the tag set associated with an object.

#### Permissions

You need the relevant read object (or version) permission for this
operation. For more information, see [Specifying Permissions in a
Policy](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html).
If the object you request does not exist, the error Amazon S3 returns
depends on whether you also have the `s3:ListBucket` permission.

-   If you have the `s3:ListBucket` permission on the bucket, Amazon S3
    will return an HTTP status code 404 ("no such key") error.

-   If you don’t have the `s3:ListBucket` permission, Amazon S3 will
    return an HTTP status code 403 ("access denied") error.

#### Versioning

By default, the GET action returns the current version of an object. To
return a different version, use the `versionId` subresource.

-   If you supply a `versionId`, you need the `s3:GetObjectVersion`
    permission to access a specific version of an object. If you request
    a specific version, you do not need to have the `s3:GetObject`
    permission. If you request the current version without a specific
    version ID, only `s3:GetObject` permission is required.
    `s3:GetObjectVersion` permission won't be required.

-   If the current version of the object is a delete marker, Amazon S3
    behaves as if the object was deleted and includes
    `x-amz-delete-marker: true` in the response.

For more information about versioning, see `put_bucket_versioning`.

#### Overriding Response Header Values

There are times when you want to override certain response header values
in a GET response. For example, you might override the
`Content-Disposition` response header value in your GET request.

You can override values for a set of response headers using the
following query parameters. These response header values are sent only
on a successful request, that is, when status code 200 OK is returned.
The set of headers you can override using these parameters is a subset
of the headers that Amazon S3 accepts when you create an object. The
response headers that you can override for the GET response are
`Content-Type`, `Content-Language`, `Expires`, `Cache-Control`,
`Content-Disposition`, and `Content-Encoding`. To override these header
values in the GET response, you use the following request parameters.

You must sign the request, either using an Authorization header or a
presigned URL, when using these parameters. They cannot be used with an
unsigned (anonymous) request.

-   `response-content-type`

-   `response-content-language`

-   `response-expires`

-   `response-cache-control`

-   `response-content-disposition`

-   `response-content-encoding`

#### Overriding Response Header Values

If both of the `If-Match` and `If-Unmodified-Since` headers are present
in the request as follows: `If-Match` condition evaluates to `true`,
and; `If-Unmodified-Since` condition evaluates to `false`; then, S3
returns 200 OK and the data requested.

If both of the `If-None-Match` and `If-Modified-Since` headers are
present in the request as follows:` If-None-Match` condition evaluates
to `false`, and; `If-Modified-Since` condition evaluates to `true`;
then, S3 returns 304 Not Modified response code.

For more information about conditional requests, see [RFC
7232](https://datatracker.ietf.org/doc/html/rfc7232).

The following operations are related to `get_object`:

-   `list_buckets`

-   `get_object_acl`

### Usage

    s3_get_object(Bucket, IfMatch, IfModifiedSince, IfNoneMatch,
      IfUnmodifiedSince, Key, Range, ResponseCacheControl,
      ResponseContentDisposition, ResponseContentEncoding,
      ResponseContentLanguage, ResponseContentType, ResponseExpires,
      VersionId, SSECustomerAlgorithm, SSECustomerKey, SSECustomerKeyMD5,
      RequestPayer, PartNumber, ExpectedBucketOwner, ChecksumMode)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_get_object_:_Bucket">Bucket</code></td>
<td><p>[required] The bucket name containing the object.</p>
<p>When using this action with an access point, you must direct requests
to the access point hostname. The access point hostname takes the form
<em>AccessPointName</em>-<em>AccountId</em>.s3-accesspoint.<em>Region</em>.amazonaws.com.
When using this action with an access point through the Amazon Web
Services SDKs, you provide the access point ARN in place of the bucket
name. For more information about access point ARNs, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using
access points</a> in the <em>Amazon S3 User Guide</em>.</p>
<p>When using an Object Lambda access point the hostname takes the form
<em>AccessPointName</em>-<em>AccountId</em>.s3-object-lambda.<em>Region</em>.amazonaws.com.</p>
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
<td><code id="s3_get_object_:_IfMatch">IfMatch</code></td>
<td><p>Return the object only if its entity tag (ETag) is the same as
the one specified; otherwise, return a 412 (precondition failed)
error.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_get_object_:_IfModifiedSince">IfModifiedSince</code></td>
<td><p>Return the object only if it has been modified since the
specified time; otherwise, return a 304 (not modified) error.</p></td>
</tr>
<tr class="even">
<td><code id="s3_get_object_:_IfNoneMatch">IfNoneMatch</code></td>
<td><p>Return the object only if its entity tag (ETag) is different from
the one specified; otherwise, return a 304 (not modified)
error.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_get_object_:_IfUnmodifiedSince">IfUnmodifiedSince</code></td>
<td><p>Return the object only if it has not been modified since the
specified time; otherwise, return a 412 (precondition failed)
error.</p></td>
</tr>
<tr class="even">
<td><code id="s3_get_object_:_Key">Key</code></td>
<td><p>[required] Key of the object to get.</p></td>
</tr>
<tr class="odd">
<td><code id="s3_get_object_:_Range">Range</code></td>
<td><p>Downloads the specified range bytes of an object. For more
information about the HTTP Range header, see <a
href="https://www.rfc-editor.org/rfc/rfc9110.html#name-range">https://www.rfc-editor.org/rfc/rfc9110.html#name-range</a>.</p>
<p>Amazon S3 doesn't support retrieving multiple ranges of data per
<code>GET</code> request.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_get_object_:_ResponseCacheControl">ResponseCacheControl</code></td>
<td><p>Sets the <code>Cache-Control</code> header of the
response.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_get_object_:_ResponseContentDisposition">ResponseContentDisposition</code></td>
<td><p>Sets the <code>Content-Disposition</code> header of the
response</p></td>
</tr>
<tr class="even">
<td><code
id="s3_get_object_:_ResponseContentEncoding">ResponseContentEncoding</code></td>
<td><p>Sets the <code>Content-Encoding</code> header of the
response.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_get_object_:_ResponseContentLanguage">ResponseContentLanguage</code></td>
<td><p>Sets the <code>Content-Language</code> header of the
response.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_get_object_:_ResponseContentType">ResponseContentType</code></td>
<td><p>Sets the <code>Content-Type</code> header of the
response.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_get_object_:_ResponseExpires">ResponseExpires</code></td>
<td><p>Sets the <code>Expires</code> header of the response.</p></td>
</tr>
<tr class="even">
<td><code id="s3_get_object_:_VersionId">VersionId</code></td>
<td><p>VersionId used to reference a specific version of the
object.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_get_object_:_SSECustomerAlgorithm">SSECustomerAlgorithm</code></td>
<td><p>Specifies the algorithm to use to when decrypting the object (for
example, AES256).</p></td>
</tr>
<tr class="even">
<td><code id="s3_get_object_:_SSECustomerKey">SSECustomerKey</code></td>
<td><p>Specifies the customer-provided encryption key for Amazon S3 used
to encrypt the data. This value is used to decrypt the object when
recovering it and must match the one used when storing the data. The key
must be appropriate for use with the algorithm specified in the
<code>x-amz-server-side-encryption-customer-algorithm</code>
header.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_get_object_:_SSECustomerKeyMD5">SSECustomerKeyMD5</code></td>
<td><p>Specifies the 128-bit MD5 digest of the encryption key according
to RFC 1321. Amazon S3 uses this header for a message integrity check to
ensure that the encryption key was transmitted without error.</p></td>
</tr>
<tr class="even">
<td><code id="s3_get_object_:_RequestPayer">RequestPayer</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code id="s3_get_object_:_PartNumber">PartNumber</code></td>
<td><p>Part number of the object being read. This is a positive integer
between 1 and 10,000. Effectively performs a 'ranged' GET request for
the part specified. Useful for downloading just a part of an
object.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_get_object_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
<td><p>The account ID of the expected bucket owner. If the bucket is
owned by a different account, the request fails with the HTTP status
code <code style="white-space: pre;">⁠403 Forbidden⁠</code> (access
denied).</p></td>
</tr>
<tr class="odd">
<td><code id="s3_get_object_:_ChecksumMode">ChecksumMode</code></td>
<td><p>To retrieve the checksum, this mode must be enabled.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Body = raw,
      DeleteMarker = TRUE|FALSE,
      AcceptRanges = "string",
      Expiration = "string",
      Restore = "string",
      LastModified = as.POSIXct(
        "2015-01-01"
      ),
      ContentLength = 123,
      ETag = "string",
      ChecksumCRC32 = "string",
      ChecksumCRC32C = "string",
      ChecksumSHA1 = "string",
      ChecksumSHA256 = "string",
      MissingMeta = 123,
      VersionId = "string",
      CacheControl = "string",
      ContentDisposition = "string",
      ContentEncoding = "string",
      ContentLanguage = "string",
      ContentRange = "string",
      ContentType = "string",
      Expires = as.POSIXct(
        "2015-01-01"
      ),
      WebsiteRedirectLocation = "string",
      ServerSideEncryption = "AES256"|"aws:kms",
      Metadata = list(
        "string"
      ),
      SSECustomerAlgorithm = "string",
      SSECustomerKeyMD5 = "string",
      SSEKMSKeyId = "string",
      BucketKeyEnabled = TRUE|FALSE,
      StorageClass = "STANDARD"|"REDUCED_REDUNDANCY"|"STANDARD_IA"|"ONEZONE_IA"|"INTELLIGENT_TIERING"|"GLACIER"|"DEEP_ARCHIVE"|"OUTPOSTS"|"GLACIER_IR"|"SNOW",
      RequestCharged = "requester",
      ReplicationStatus = "COMPLETE"|"PENDING"|"FAILED"|"REPLICA",
      PartsCount = 123,
      TagCount = 123,
      ObjectLockMode = "GOVERNANCE"|"COMPLIANCE",
      ObjectLockRetainUntilDate = as.POSIXct(
        "2015-01-01"
      ),
      ObjectLockLegalHoldStatus = "ON"|"OFF"
    )

### Request syntax

    svc$get_object(
      Bucket = "string",
      IfMatch = "string",
      IfModifiedSince = as.POSIXct(
        "2015-01-01"
      ),
      IfNoneMatch = "string",
      IfUnmodifiedSince = as.POSIXct(
        "2015-01-01"
      ),
      Key = "string",
      Range = "string",
      ResponseCacheControl = "string",
      ResponseContentDisposition = "string",
      ResponseContentEncoding = "string",
      ResponseContentLanguage = "string",
      ResponseContentType = "string",
      ResponseExpires = as.POSIXct(
        "2015-01-01"
      ),
      VersionId = "string",
      SSECustomerAlgorithm = "string",
      SSECustomerKey = raw,
      SSECustomerKeyMD5 = "string",
      RequestPayer = "requester",
      PartNumber = 123,
      ExpectedBucketOwner = "string",
      ChecksumMode = "ENABLED"
    )

### Examples

    ## Not run: 
    # The following example retrieves an object for an S3 bucket.
    svc$get_object(
      Bucket = "examplebucket",
      Key = "HappyFace.jpg"
    )

    # The following example retrieves an object for an S3 bucket. The request
    # specifies the range header to retrieve a specific byte range.
    svc$get_object(
      Bucket = "examplebucket",
      Key = "SampleFile.txt",
      Range = "bytes=0-9"
    )

    ## End(Not run)
