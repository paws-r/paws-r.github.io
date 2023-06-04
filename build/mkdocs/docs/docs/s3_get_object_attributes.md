<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_get_object_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves all the metadata from an object without returning the object itself

### Description

Retrieves all the metadata from an object without returning the object
itself. This action is useful if you're interested only in an object's
metadata. To use `get_object_attributes`, you must have READ access to
the object.

`get_object_attributes` combines the functionality of `head_object` and
`list_parts`. All of the data returned with each of those individual
calls can be returned with a single call to `get_object_attributes`.

If you encrypt an object by using server-side encryption with
customer-provided encryption keys (SSE-C) when you store the object in
Amazon S3, then when you retrieve the metadata from the object, you must
use the following headers:

-   `x-amz-server-side-encryption-customer-algorithm`

-   `x-amz-server-side-encryption-customer-key`

-   `x-amz-server-side-encryption-customer-key-MD5`

For more information about SSE-C, see [Server-Side Encryption (Using
Customer-Provided Encryption
Keys)](https://docs.aws.amazon.com/AmazonS3/latest/userguide/ServerSideEncryptionCustomerKeys.html)
in the *Amazon S3 User Guide*.

-   Encryption request headers, such as `x-amz-server-side-encryption`,
    should not be sent for GET requests if your object uses server-side
    encryption with Amazon Web Services KMS keys stored in Amazon Web
    Services Key Management Service (SSE-KMS) or server-side encryption
    with Amazon S3 managed keys (SSE-S3). If your object does use these
    types of keys, you'll get an HTTP `⁠400 Bad Request⁠` error.

-   The last modified property in this case is the creation date of the
    object.

Consider the following when using request headers:

-   If both of the `If-Match` and `If-Unmodified-Since` headers are
    present in the request as follows, then Amazon S3 returns the HTTP
    status code `⁠200 OK⁠` and the data requested:

    -   `If-Match` condition evaluates to `true`.

    -   `If-Unmodified-Since` condition evaluates to `false`.

-   If both of the `If-None-Match` and `If-Modified-Since` headers are
    present in the request as follows, then Amazon S3 returns the HTTP
    status code `⁠304 Not Modified⁠`:

    -   `If-None-Match` condition evaluates to `false`.

    -   `If-Modified-Since` condition evaluates to `true`.

For more information about conditional requests, see [RFC
7232](https://datatracker.ietf.org/doc/html/rfc7232).

#### Permissions

The permissions that you need to use this operation depend on whether
the bucket is versioned. If the bucket is versioned, you need both the
`s3:GetObjectVersion` and `s3:GetObjectVersionAttributes` permissions
for this operation. If the bucket is not versioned, you need the
`s3:GetObject` and `s3:GetObjectAttributes` permissions. For more
information, see [Specifying Permissions in a
Policy](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html)
in the *Amazon S3 User Guide*. If the object that you request does not
exist, the error Amazon S3 returns depends on whether you also have the
`s3:ListBucket` permission.

-   If you have the `s3:ListBucket` permission on the bucket, Amazon S3
    returns an HTTP status code `⁠404 Not Found⁠` ("no such key") error.

-   If you don't have the `s3:ListBucket` permission, Amazon S3 returns
    an HTTP status code `⁠403 Forbidden⁠` ("access denied") error.

The following actions are related to `get_object_attributes`:

-   `get_object`

-   `get_object_acl`

-   `get_object_legal_hold`

-   `get_object_lock_configuration`

-   `get_object_retention`

-   `get_object_tagging`

-   `head_object`

-   `list_parts`

### Usage

    s3_get_object_attributes(Bucket, Key, VersionId, MaxParts,
      PartNumberMarker, SSECustomerAlgorithm, SSECustomerKey,
      SSECustomerKeyMD5, RequestPayer, ExpectedBucketOwner, ObjectAttributes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_get_object_attributes_:_Bucket">Bucket</code></td>
<td><p>[required] The name of the bucket that contains the object.</p>
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
<td><code id="s3_get_object_attributes_:_Key">Key</code></td>
<td><p>[required] The object key.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_get_object_attributes_:_VersionId">VersionId</code></td>
<td><p>The version ID used to reference a specific version of the
object.</p></td>
</tr>
<tr class="even">
<td><code id="s3_get_object_attributes_:_MaxParts">MaxParts</code></td>
<td><p>Sets the maximum number of parts to return.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_get_object_attributes_:_PartNumberMarker">PartNumberMarker</code></td>
<td><p>Specifies the part after which listing should begin. Only parts
with higher part numbers will be listed.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_get_object_attributes_:_SSECustomerAlgorithm">SSECustomerAlgorithm</code></td>
<td><p>Specifies the algorithm to use when encrypting the object (for
example, AES256).</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_get_object_attributes_:_SSECustomerKey">SSECustomerKey</code></td>
<td><p>Specifies the customer-provided encryption key for Amazon S3 to
use in encrypting data. This value is used to store the object and then
it is discarded; Amazon S3 does not store the encryption key. The key
must be appropriate for use with the algorithm specified in the
<code>x-amz-server-side-encryption-customer-algorithm</code>
header.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_get_object_attributes_:_SSECustomerKeyMD5">SSECustomerKeyMD5</code></td>
<td><p>Specifies the 128-bit MD5 digest of the encryption key according
to RFC 1321. Amazon S3 uses this header for a message integrity check to
ensure that the encryption key was transmitted without error.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_get_object_attributes_:_RequestPayer">RequestPayer</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="s3_get_object_attributes_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
<td><p>The account ID of the expected bucket owner. If the bucket is
owned by a different account, the request fails with the HTTP status
code <code style="white-space: pre;">⁠403 Forbidden⁠</code> (access
denied).</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_get_object_attributes_:_ObjectAttributes">ObjectAttributes</code></td>
<td><p>[required] An XML header that specifies the fields at the root
level that you want returned in the response. Fields that you do not
specify are not returned.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DeleteMarker = TRUE|FALSE,
      LastModified = as.POSIXct(
        "2015-01-01"
      ),
      VersionId = "string",
      RequestCharged = "requester",
      ETag = "string",
      Checksum = list(
        ChecksumCRC32 = "string",
        ChecksumCRC32C = "string",
        ChecksumSHA1 = "string",
        ChecksumSHA256 = "string"
      ),
      ObjectParts = list(
        TotalPartsCount = 123,
        PartNumberMarker = 123,
        NextPartNumberMarker = 123,
        MaxParts = 123,
        IsTruncated = TRUE|FALSE,
        Parts = list(
          list(
            PartNumber = 123,
            Size = 123,
            ChecksumCRC32 = "string",
            ChecksumCRC32C = "string",
            ChecksumSHA1 = "string",
            ChecksumSHA256 = "string"
          )
        )
      ),
      StorageClass = "STANDARD"|"REDUCED_REDUNDANCY"|"STANDARD_IA"|"ONEZONE_IA"|"INTELLIGENT_TIERING"|"GLACIER"|"DEEP_ARCHIVE"|"OUTPOSTS"|"GLACIER_IR"|"SNOW",
      ObjectSize = 123
    )

### Request syntax

    svc$get_object_attributes(
      Bucket = "string",
      Key = "string",
      VersionId = "string",
      MaxParts = 123,
      PartNumberMarker = 123,
      SSECustomerAlgorithm = "string",
      SSECustomerKey = raw,
      SSECustomerKeyMD5 = "string",
      RequestPayer = "requester",
      ExpectedBucketOwner = "string",
      ObjectAttributes = list(
        "ETag"|"Checksum"|"ObjectParts"|"StorageClass"|"ObjectSize"
      )
    )
