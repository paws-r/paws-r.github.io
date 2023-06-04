<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_head_object</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The HEAD action retrieves metadata from an object without returning the object itself

### Description

The HEAD action retrieves metadata from an object without returning the
object itself. This action is useful if you're only interested in an
object's metadata. To use HEAD, you must have READ access to the object.

A `HEAD` request has the same options as a `GET` action on an object.
The response is identical to the `GET` response except that there is no
response body. Because of this, if the `HEAD` request generates an
error, it returns a generic `⁠400 Bad Request⁠`, `⁠403 Forbidden⁠` or
`⁠404 Not Found⁠` code. It is not possible to retrieve the exact exception
beyond these error codes.

If you encrypt an object by using server-side encryption with
customer-provided encryption keys (SSE-C) when you store the object in
Amazon S3, then when you retrieve the metadata from the object, you must
use the following headers:

-   x-amz-server-side-encryption-customer-algorithm

-   x-amz-server-side-encryption-customer-key

-   x-amz-server-side-encryption-customer-key-MD5

For more information about SSE-C, see [Server-Side Encryption (Using
Customer-Provided Encryption
Keys)](https://docs.aws.amazon.com/AmazonS3/latest/userguide/ServerSideEncryptionCustomerKeys.html).

-   Encryption request headers, like `x-amz-server-side-encryption`,
    should not be sent for GET requests if your object uses server-side
    encryption with KMS keys (SSE-KMS) or server-side encryption with
    Amazon S3–managed encryption keys (SSE-S3). If your object does use
    these types of keys, you’ll get an HTTP 400 BadRequest error.

-   The last modified property in this case is the creation date of the
    object.

Request headers are limited to 8 KB in size. For more information, see
[Common Request
Headers](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTCommonRequestHeaders.html).

Consider the following when using request headers:

-   Consideration 1 – If both of the `If-Match` and
    `If-Unmodified-Since` headers are present in the request as follows:

    -   `If-Match` condition evaluates to `true`, and;

    -   `If-Unmodified-Since` condition evaluates to `false`;

    Then Amazon S3 returns `⁠200 OK⁠` and the data requested.

-   Consideration 2 – If both of the `If-None-Match` and
    `If-Modified-Since` headers are present in the request as follows:

    -   `If-None-Match` condition evaluates to `false`, and;

    -   `If-Modified-Since` condition evaluates to `true`;

    Then Amazon S3 returns the `⁠304 Not Modified⁠` response code.

For more information about conditional requests, see [RFC
7232](https://datatracker.ietf.org/doc/html/rfc7232).

#### Permissions

You need the relevant read object (or version) permission for this
operation. For more information, see [Actions, resources, and condition
keys for Amazon
S3](https://docs.aws.amazon.com/AmazonS3/latest/userguide/list_amazons3.html).
If the object you request does not exist, the error Amazon S3 returns
depends on whether you also have the s3:ListBucket permission.

-   If you have the `s3:ListBucket` permission on the bucket, Amazon S3
    returns an HTTP status code 404 ("no such key") error.

-   If you don’t have the `s3:ListBucket` permission, Amazon S3 returns
    an HTTP status code 403 ("access denied") error.

The following actions are related to `head_object`:

-   `get_object`

-   `get_object_attributes`

### Usage

    s3_head_object(Bucket, IfMatch, IfModifiedSince, IfNoneMatch,
      IfUnmodifiedSince, Key, Range, VersionId, SSECustomerAlgorithm,
      SSECustomerKey, SSECustomerKeyMD5, RequestPayer, PartNumber,
      ExpectedBucketOwner, ChecksumMode)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_head_object_:_Bucket">Bucket</code></td>
<td><p>[required] The name of the bucket containing the object.</p>
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
<td><code id="s3_head_object_:_IfMatch">IfMatch</code></td>
<td><p>Return the object only if its entity tag (ETag) is the same as
the one specified; otherwise, return a 412 (precondition failed)
error.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_head_object_:_IfModifiedSince">IfModifiedSince</code></td>
<td><p>Return the object only if it has been modified since the
specified time; otherwise, return a 304 (not modified) error.</p></td>
</tr>
<tr class="even">
<td><code id="s3_head_object_:_IfNoneMatch">IfNoneMatch</code></td>
<td><p>Return the object only if its entity tag (ETag) is different from
the one specified; otherwise, return a 304 (not modified)
error.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_head_object_:_IfUnmodifiedSince">IfUnmodifiedSince</code></td>
<td><p>Return the object only if it has not been modified since the
specified time; otherwise, return a 412 (precondition failed)
error.</p></td>
</tr>
<tr class="even">
<td><code id="s3_head_object_:_Key">Key</code></td>
<td><p>[required] The object key.</p></td>
</tr>
<tr class="odd">
<td><code id="s3_head_object_:_Range">Range</code></td>
<td><p>HeadObject returns only the metadata for an object. If the Range
is satisfiable, only the <code>ContentLength</code> is affected in the
response. If the Range is not satisfiable, S3 returns a <code
style="white-space: pre;">⁠416 - Requested Range Not Satisfiable⁠</code>
error.</p></td>
</tr>
<tr class="even">
<td><code id="s3_head_object_:_VersionId">VersionId</code></td>
<td><p>VersionId used to reference a specific version of the
object.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_head_object_:_SSECustomerAlgorithm">SSECustomerAlgorithm</code></td>
<td><p>Specifies the algorithm to use to when encrypting the object (for
example, AES256).</p></td>
</tr>
<tr class="even">
<td><code
id="s3_head_object_:_SSECustomerKey">SSECustomerKey</code></td>
<td><p>Specifies the customer-provided encryption key for Amazon S3 to
use in encrypting data. This value is used to store the object and then
it is discarded; Amazon S3 does not store the encryption key. The key
must be appropriate for use with the algorithm specified in the
<code>x-amz-server-side-encryption-customer-algorithm</code>
header.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_head_object_:_SSECustomerKeyMD5">SSECustomerKeyMD5</code></td>
<td><p>Specifies the 128-bit MD5 digest of the encryption key according
to RFC 1321. Amazon S3 uses this header for a message integrity check to
ensure that the encryption key was transmitted without error.</p></td>
</tr>
<tr class="even">
<td><code id="s3_head_object_:_RequestPayer">RequestPayer</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code id="s3_head_object_:_PartNumber">PartNumber</code></td>
<td><p>Part number of the object being read. This is a positive integer
between 1 and 10,000. Effectively performs a 'ranged' HEAD request for
the part specified. Useful querying about the size of the part and the
number of parts in this object.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_head_object_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
<td><p>The account ID of the expected bucket owner. If the bucket is
owned by a different account, the request fails with the HTTP status
code <code style="white-space: pre;">⁠403 Forbidden⁠</code> (access
denied).</p></td>
</tr>
<tr class="odd">
<td><code id="s3_head_object_:_ChecksumMode">ChecksumMode</code></td>
<td><p>To retrieve the checksum, this parameter must be enabled.</p>
<p>In addition, if you enable <code>ChecksumMode</code> and the object
is encrypted with Amazon Web Services Key Management Service (Amazon Web
Services KMS), you must have permission to use the
<code>kms:Decrypt</code> action for the request to succeed.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DeleteMarker = TRUE|FALSE,
      AcceptRanges = "string",
      Expiration = "string",
      Restore = "string",
      ArchiveStatus = "ARCHIVE_ACCESS"|"DEEP_ARCHIVE_ACCESS",
      LastModified = as.POSIXct(
        "2015-01-01"
      ),
      ContentLength = 123,
      ChecksumCRC32 = "string",
      ChecksumCRC32C = "string",
      ChecksumSHA1 = "string",
      ChecksumSHA256 = "string",
      ETag = "string",
      MissingMeta = 123,
      VersionId = "string",
      CacheControl = "string",
      ContentDisposition = "string",
      ContentEncoding = "string",
      ContentLanguage = "string",
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
      ObjectLockMode = "GOVERNANCE"|"COMPLIANCE",
      ObjectLockRetainUntilDate = as.POSIXct(
        "2015-01-01"
      ),
      ObjectLockLegalHoldStatus = "ON"|"OFF"
    )

### Request syntax

    svc$head_object(
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
    # The following example retrieves an object metadata.
    svc$head_object(
      Bucket = "examplebucket",
      Key = "HappyFace.jpg"
    )

    ## End(Not run)
