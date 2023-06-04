<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_write_get_object_response</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Passes transformed objects to a GetObject operation when using Object Lambda access points

### Description

Passes transformed objects to a `get_object` operation when using Object
Lambda access points. For information about Object Lambda access points,
see [Transforming objects with Object Lambda access
points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/transforming-objects.html)
in the *Amazon S3 User Guide*.

This operation supports metadata that can be returned by `get_object`,
in addition to `RequestRoute`, `RequestToken`, `StatusCode`,
`ErrorCode`, and `ErrorMessage`. The `get_object` response metadata is
supported so that the `write_get_object_response` caller, typically an
Lambda function, can provide the same metadata when it internally
invokes `get_object`. When `write_get_object_response` is called by a
customer-owned Lambda function, the metadata returned to the end user
`get_object` call might differ from what Amazon S3 would normally
return.

You can include any number of metadata headers. When including a
metadata header, it should be prefaced with `x-amz-meta`. For example,
`x-amz-meta-my-custom-header: MyCustomValue`. The primary use case for
this is to forward `get_object` metadata.

Amazon Web Services provides some prebuilt Lambda functions that you can
use with S3 Object Lambda to detect and redact personally identifiable
information (PII) and decompress S3 objects. These Lambda functions are
available in the Amazon Web Services Serverless Application Repository,
and can be selected through the Amazon Web Services Management Console
when you create your Object Lambda access point.

Example 1: PII Access Control - This Lambda function uses Amazon
Comprehend, a natural language processing (NLP) service using machine
learning to find insights and relationships in text. It automatically
detects personally identifiable information (PII) such as names,
addresses, dates, credit card numbers, and social security numbers from
documents in your Amazon S3 bucket.

Example 2: PII Redaction - This Lambda function uses Amazon Comprehend,
a natural language processing (NLP) service using machine learning to
find insights and relationships in text. It automatically redacts
personally identifiable information (PII) such as names, addresses,
dates, credit card numbers, and social security numbers from documents
in your Amazon S3 bucket.

Example 3: Decompression - The Lambda function
S3ObjectLambdaDecompression, is equipped to decompress objects stored in
S3 in one of six compressed file formats including bzip2, gzip, snappy,
zlib, zstandard and ZIP.

For information on how to view and use these functions, see [Using
Amazon Web Services built Lambda
functions](https://docs.aws.amazon.com/AmazonS3/latest/userguide/olap-examples.html)
in the *Amazon S3 User Guide*.

### Usage

    s3_write_get_object_response(RequestRoute, RequestToken, Body,
      StatusCode, ErrorCode, ErrorMessage, AcceptRanges, CacheControl,
      ContentDisposition, ContentEncoding, ContentLanguage, ContentLength,
      ContentRange, ContentType, ChecksumCRC32, ChecksumCRC32C, ChecksumSHA1,
      ChecksumSHA256, DeleteMarker, ETag, Expires, Expiration, LastModified,
      MissingMeta, Metadata, ObjectLockMode, ObjectLockLegalHoldStatus,
      ObjectLockRetainUntilDate, PartsCount, ReplicationStatus,
      RequestCharged, Restore, ServerSideEncryption, SSECustomerAlgorithm,
      SSEKMSKeyId, SSECustomerKeyMD5, StorageClass, TagCount, VersionId,
      BucketKeyEnabled)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="s3_write_get_object_response_:_RequestRoute">RequestRoute</code></td>
<td><p>[required] Route prefix to the HTTP URL generated.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_write_get_object_response_:_RequestToken">RequestToken</code></td>
<td><p>[required] A single use encrypted token that maps
<code>write_get_object_response</code> to the end user
<code>get_object</code> request.</p></td>
</tr>
<tr class="odd">
<td><code id="s3_write_get_object_response_:_Body">Body</code></td>
<td><p>The object data.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_write_get_object_response_:_StatusCode">StatusCode</code></td>
<td><p>The integer status code for an HTTP response of a corresponding
<code>get_object</code> request. The following is a list of status
codes.</p>
<ul>
<li><p><code>200 - OK</code></p></li>
<li><p><code
style="white-space: pre;">⁠206 - Partial Content⁠</code></p></li>
<li><p><code
style="white-space: pre;">⁠304 - Not Modified⁠</code></p></li>
<li><p><code style="white-space: pre;">⁠400 - Bad Request⁠</code></p></li>
<li><p><code>401 - Unauthorized</code></p></li>
<li><p><code>403 - Forbidden</code></p></li>
<li><p><code style="white-space: pre;">⁠404 - Not Found⁠</code></p></li>
<li><p><code
style="white-space: pre;">⁠405 - Method Not Allowed⁠</code></p></li>
<li><p><code>409 - Conflict</code></p></li>
<li><p><code
style="white-space: pre;">⁠411 - Length Required⁠</code></p></li>
<li><p><code
style="white-space: pre;">⁠412 - Precondition Failed⁠</code></p></li>
<li><p><code
style="white-space: pre;">⁠416 - Range Not Satisfiable⁠</code></p></li>
<li><p><code
style="white-space: pre;">⁠500 - Internal Server Error⁠</code></p></li>
<li><p><code
style="white-space: pre;">⁠503 - Service Unavailable⁠</code></p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="s3_write_get_object_response_:_ErrorCode">ErrorCode</code></td>
<td><p>A string that uniquely identifies an error condition. Returned in
the \&lt;Code\&gt; tag of the error XML response for a corresponding
<code>get_object</code> call. Cannot be used with a successful
<code>StatusCode</code> header or when the transformed object is
provided in the body. All error codes from S3 are sentence-cased. The
regular expression (regex) value is
<code>"^[A-Z][a-zA-Z]+$"</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_write_get_object_response_:_ErrorMessage">ErrorMessage</code></td>
<td><p>Contains a generic description of the error condition. Returned
in the \&lt;Message\&gt; tag of the error XML response for a
corresponding <code>get_object</code> call. Cannot be used with a
successful <code>StatusCode</code> header or when the transformed object
is provided in body.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_write_get_object_response_:_AcceptRanges">AcceptRanges</code></td>
<td><p>Indicates that a range of bytes was specified.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_write_get_object_response_:_CacheControl">CacheControl</code></td>
<td><p>Specifies caching behavior along the request/reply
chain.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_write_get_object_response_:_ContentDisposition">ContentDisposition</code></td>
<td><p>Specifies presentational information for the object.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_write_get_object_response_:_ContentEncoding">ContentEncoding</code></td>
<td><p>Specifies what content encodings have been applied to the object
and thus what decoding mechanisms must be applied to obtain the
media-type referenced by the Content-Type header field.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_write_get_object_response_:_ContentLanguage">ContentLanguage</code></td>
<td><p>The language the content is in.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_write_get_object_response_:_ContentLength">ContentLength</code></td>
<td><p>The size of the content body in bytes.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_write_get_object_response_:_ContentRange">ContentRange</code></td>
<td><p>The portion of the object returned in the response.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_write_get_object_response_:_ContentType">ContentType</code></td>
<td><p>A standard MIME type describing the format of the object
data.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_write_get_object_response_:_ChecksumCRC32">ChecksumCRC32</code></td>
<td><p>This header can be used as a data integrity check to verify that
the data received is the same data that was originally sent. This
specifies the base64-encoded, 32-bit CRC32 checksum of the object
returned by the Object Lambda function. This may not match the checksum
for the object stored in Amazon S3. Amazon S3 will perform validation of
the checksum values only when the original <code>get_object</code>
request required checksum validation. For more information about
checksums, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking
object integrity</a> in the <em>Amazon S3 User Guide</em>.</p>
<p>Only one checksum header can be specified at a time. If you supply
multiple checksum headers, this request will fail.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_write_get_object_response_:_ChecksumCRC32C">ChecksumCRC32C</code></td>
<td><p>This header can be used as a data integrity check to verify that
the data received is the same data that was originally sent. This
specifies the base64-encoded, 32-bit CRC32C checksum of the object
returned by the Object Lambda function. This may not match the checksum
for the object stored in Amazon S3. Amazon S3 will perform validation of
the checksum values only when the original <code>get_object</code>
request required checksum validation. For more information about
checksums, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking
object integrity</a> in the <em>Amazon S3 User Guide</em>.</p>
<p>Only one checksum header can be specified at a time. If you supply
multiple checksum headers, this request will fail.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_write_get_object_response_:_ChecksumSHA1">ChecksumSHA1</code></td>
<td><p>This header can be used as a data integrity check to verify that
the data received is the same data that was originally sent. This
specifies the base64-encoded, 160-bit SHA-1 digest of the object
returned by the Object Lambda function. This may not match the checksum
for the object stored in Amazon S3. Amazon S3 will perform validation of
the checksum values only when the original <code>get_object</code>
request required checksum validation. For more information about
checksums, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking
object integrity</a> in the <em>Amazon S3 User Guide</em>.</p>
<p>Only one checksum header can be specified at a time. If you supply
multiple checksum headers, this request will fail.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_write_get_object_response_:_ChecksumSHA256">ChecksumSHA256</code></td>
<td><p>This header can be used as a data integrity check to verify that
the data received is the same data that was originally sent. This
specifies the base64-encoded, 256-bit SHA-256 digest of the object
returned by the Object Lambda function. This may not match the checksum
for the object stored in Amazon S3. Amazon S3 will perform validation of
the checksum values only when the original <code>get_object</code>
request required checksum validation. For more information about
checksums, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking
object integrity</a> in the <em>Amazon S3 User Guide</em>.</p>
<p>Only one checksum header can be specified at a time. If you supply
multiple checksum headers, this request will fail.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_write_get_object_response_:_DeleteMarker">DeleteMarker</code></td>
<td><p>Specifies whether an object stored in Amazon S3 is
(<code>true</code>) or is not (<code>false</code>) a delete
marker.</p></td>
</tr>
<tr class="even">
<td><code id="s3_write_get_object_response_:_ETag">ETag</code></td>
<td><p>An opaque identifier assigned by a web server to a specific
version of a resource found at a URL.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_write_get_object_response_:_Expires">Expires</code></td>
<td><p>The date and time at which the object is no longer
cacheable.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_write_get_object_response_:_Expiration">Expiration</code></td>
<td><p>If the object expiration is configured (see PUT Bucket
lifecycle), the response includes this header. It includes the
<code>expiry-date</code> and <code>rule-id</code> key-value pairs that
provide the object expiration information. The value of the
<code>rule-id</code> is URL-encoded.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_write_get_object_response_:_LastModified">LastModified</code></td>
<td><p>The date and time that the object was last modified.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_write_get_object_response_:_MissingMeta">MissingMeta</code></td>
<td><p>Set to the number of metadata entries not returned in
<code>x-amz-meta</code> headers. This can happen if you create metadata
using an API like SOAP that supports more flexible metadata than the
REST API. For example, using SOAP, you can create metadata whose values
are not legal HTTP headers.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_write_get_object_response_:_Metadata">Metadata</code></td>
<td><p>A map of metadata to store with the object in S3.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_write_get_object_response_:_ObjectLockMode">ObjectLockMode</code></td>
<td><p>Indicates whether an object stored in Amazon S3 has Object Lock
enabled. For more information about S3 Object Lock, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lock.html">Object
Lock</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_write_get_object_response_:_ObjectLockLegalHoldStatus">ObjectLockLegalHoldStatus</code></td>
<td><p>Indicates whether an object stored in Amazon S3 has an active
legal hold.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_write_get_object_response_:_ObjectLockRetainUntilDate">ObjectLockRetainUntilDate</code></td>
<td><p>The date and time when Object Lock is configured to
expire.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_write_get_object_response_:_PartsCount">PartsCount</code></td>
<td><p>The count of parts this object has.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_write_get_object_response_:_ReplicationStatus">ReplicationStatus</code></td>
<td><p>Indicates if request involves bucket that is either a source or
destination in a Replication rule. For more information about S3
Replication, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/replication.html">Replication</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_write_get_object_response_:_RequestCharged">RequestCharged</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="s3_write_get_object_response_:_Restore">Restore</code></td>
<td><p>Provides information about object restoration operation and
expiration time of the restored object copy.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_write_get_object_response_:_ServerSideEncryption">ServerSideEncryption</code></td>
<td><p>The server-side encryption algorithm used when storing requested
object in Amazon S3 (for example, AES256,
<code>aws:kms</code>).</p></td>
</tr>
<tr class="even">
<td><code
id="s3_write_get_object_response_:_SSECustomerAlgorithm">SSECustomerAlgorithm</code></td>
<td><p>Encryption algorithm used if server-side encryption with a
customer-provided encryption key was specified for object stored in
Amazon S3.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_write_get_object_response_:_SSEKMSKeyId">SSEKMSKeyId</code></td>
<td><p>If present, specifies the ID of the Amazon Web Services Key
Management Service (Amazon Web Services KMS) symmetric encryption
customer managed key that was used for stored in Amazon S3
object.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_write_get_object_response_:_SSECustomerKeyMD5">SSECustomerKeyMD5</code></td>
<td><p>128-bit MD5 digest of customer-provided encryption key used in
Amazon S3 to encrypt data stored in S3. For more information, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/ServerSideEncryptionCustomerKeys.html">Protecting
data using server-side encryption with customer-provided encryption keys
(SSE-C)</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_write_get_object_response_:_StorageClass">StorageClass</code></td>
<td><p>Provides storage class information of the object. Amazon S3
returns this header for all objects except for S3 Standard storage class
objects.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage-class-intro.html">Storage
Classes</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_write_get_object_response_:_TagCount">TagCount</code></td>
<td><p>The number of tags, if any, on the object.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_write_get_object_response_:_VersionId">VersionId</code></td>
<td><p>An ID used to reference a specific version of the
object.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_write_get_object_response_:_BucketKeyEnabled">BucketKeyEnabled</code></td>
<td><p>Indicates whether the object stored in Amazon S3 uses an S3
bucket key for server-side encryption with Amazon Web Services KMS
(SSE-KMS).</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$write_get_object_response(
      RequestRoute = "string",
      RequestToken = "string",
      Body = raw,
      StatusCode = 123,
      ErrorCode = "string",
      ErrorMessage = "string",
      AcceptRanges = "string",
      CacheControl = "string",
      ContentDisposition = "string",
      ContentEncoding = "string",
      ContentLanguage = "string",
      ContentLength = 123,
      ContentRange = "string",
      ContentType = "string",
      ChecksumCRC32 = "string",
      ChecksumCRC32C = "string",
      ChecksumSHA1 = "string",
      ChecksumSHA256 = "string",
      DeleteMarker = TRUE|FALSE,
      ETag = "string",
      Expires = as.POSIXct(
        "2015-01-01"
      ),
      Expiration = "string",
      LastModified = as.POSIXct(
        "2015-01-01"
      ),
      MissingMeta = 123,
      Metadata = list(
        "string"
      ),
      ObjectLockMode = "GOVERNANCE"|"COMPLIANCE",
      ObjectLockLegalHoldStatus = "ON"|"OFF",
      ObjectLockRetainUntilDate = as.POSIXct(
        "2015-01-01"
      ),
      PartsCount = 123,
      ReplicationStatus = "COMPLETE"|"PENDING"|"FAILED"|"REPLICA",
      RequestCharged = "requester",
      Restore = "string",
      ServerSideEncryption = "AES256"|"aws:kms",
      SSECustomerAlgorithm = "string",
      SSEKMSKeyId = "string",
      SSECustomerKeyMD5 = "string",
      StorageClass = "STANDARD"|"REDUCED_REDUNDANCY"|"STANDARD_IA"|"ONEZONE_IA"|"INTELLIGENT_TIERING"|"GLACIER"|"DEEP_ARCHIVE"|"OUTPOSTS"|"GLACIER_IR"|"SNOW",
      TagCount = 123,
      VersionId = "string",
      BucketKeyEnabled = TRUE|FALSE
    )
