<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_download_file</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Download a file from S3 and store it at a specified file location

### Description

Download a file from S3 and store it at a specified file location.

### Usage

    s3_download_file(Bucket, Key, Filename, IfMatch, IfModifiedSince,
    IfNoneMatch, IfUnmodifiedSince, Range, ResponseCacheControl,
    ResponseContentDisposition, ResponseContentEncoding, ResponseContentLanguage,
    ResponseContentType, ResponseExpires, VersionId, SSECustomerAlgorithm,
    SSECustomerKey, SSECustomerKeyMD5, RequestPayer, PartNumber,
    ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_download_file_:_Bucket">Bucket</code></td>
<td><p>[required] The bucket name containing the object.</p>
<p>When using this API with an access point, you must direct requests to
the access point hostname. The access point hostname takes the form
<em>AccessPointName</em>-<em>AccountId</em>.s3-accesspoint.<em>Region</em>.amazonaws.com.
When using this operation with an access point through the AWS SDKs, you
provide the access point ARN in place of the bucket name. For more
information about access point ARNs, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using
Access Points</a> in the <em>Amazon Simple Storage Service Developer
Guide</em>.</p>
<p>When using this API with Amazon S3 on Outposts, you must direct
requests to the S3 on Outposts hostname. The S3 on Outposts hostname
takes the form
<em>AccessPointName</em>-<em>AccountId</em>.<em>outpostID</em>.s3-outposts.<em>Region</em>.amazonaws.com.
When using this operation using S3 on Outposts through the AWS SDKs, you
provide the Outposts bucket ARN in place of the bucket name. For more
information about S3 on Outposts ARNs, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">Using
S3 on Outposts</a> in the <em>Amazon Simple Storage Service Developer
Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code id="s3_download_file_:_Key">Key</code></td>
<td><p>[required] Key of the object to get.</p></td>
</tr>
<tr class="odd">
<td><code id="s3_download_file_:_Filename">Filename</code></td>
<td><p>[required] A local file location where the downloaded object will
be saved.</p></td>
</tr>
<tr class="even">
<td><code id="s3_download_file_:_IfMatch">IfMatch</code></td>
<td><p>Return the object only if its entity tag (ETag) is the same as
the one specified, otherwise return a 412 (precondition
failed).</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_download_file_:_IfModifiedSince">IfModifiedSince</code></td>
<td><p>Return the object only if it has been modified since the
specified time, otherwise return a 304 (not modified).</p></td>
</tr>
<tr class="even">
<td><code id="s3_download_file_:_IfNoneMatch">IfNoneMatch</code></td>
<td><p>Return the object only if its entity tag (ETag) is different from
the one specified, otherwise return a 304 (not modified).</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_download_file_:_IfUnmodifiedSince">IfUnmodifiedSince</code></td>
<td><p>Return the object only if it has not been modified since the
specified time, otherwise return a 412 (precondition failed).</p></td>
</tr>
<tr class="even">
<td><code id="s3_download_file_:_Range">Range</code></td>
<td><p>Downloads the specified range bytes of an object. For more
information about the HTTP Range header, see <a
href="https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35">https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35</a>.</p>
<p>Amazon S3 doesn't support retrieving multiple ranges of data per
<code>GET</code> request.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_download_file_:_ResponseCacheControl">ResponseCacheControl</code></td>
<td><p>Sets the <code>Cache-Control</code> header of the
response.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_download_file_:_ResponseContentDisposition">ResponseContentDisposition</code></td>
<td><p>Sets the <code>Content-Disposition</code> header of the
response</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_download_file_:_ResponseContentEncoding">ResponseContentEncoding</code></td>
<td><p>Sets the <code>Content-Encoding</code> header of the
response.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_download_file_:_ResponseContentLanguage">ResponseContentLanguage</code></td>
<td><p>Sets the <code>Content-Language</code> header of the
response.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_download_file_:_ResponseContentType">ResponseContentType</code></td>
<td><p>Sets the <code>Content-Type</code> header of the
response.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_download_file_:_ResponseExpires">ResponseExpires</code></td>
<td><p>Sets the <code>Expires</code> header of the response.</p></td>
</tr>
<tr class="odd">
<td><code id="s3_download_file_:_VersionId">VersionId</code></td>
<td><p>VersionId used to reference a specific version of the
object.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_download_file_:_SSECustomerAlgorithm">SSECustomerAlgorithm</code></td>
<td><p>Specifies the algorithm to use to when encrypting the object (for
example, AES256).</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_download_file_:_SSECustomerKey">SSECustomerKey</code></td>
<td><p>Specifies the customer-provided encryption key for Amazon S3 to
use in encrypting data. This value is used to store the object and then
it is discarded; Amazon S3 does not store the encryption key. The key
must be appropriate for use with the algorithm specified in the
<code>x-amz-server-side-encryption-customer-algorithm</code>
header.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_download_file_:_SSECustomerKeyMD5">SSECustomerKeyMD5</code></td>
<td><p>Specifies the 128-bit MD5 digest of the encryption key according
to RFC 1321. Amazon S3 uses this header for a message integrity check to
ensure that the encryption key was transmitted without error.</p></td>
</tr>
<tr class="odd">
<td><code id="s3_download_file_:_RequestPayer">RequestPayer</code></td>
<td><p>Confirms that the requester knows that they will be charged for
the request. Bucket owners need not specify this parameter in their
requests</p></td>
</tr>
<tr class="even">
<td><code id="s3_download_file_:_PartNumber">PartNumber</code></td>
<td><p>Part number of the object being read. This is a positive integer
between 1 and 10,000. Effectively performs a 'ranged' GET request for
the part specified. Useful for downloading just a part of an
object.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_download_file_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
<td><p>The account id of the expected bucket owner. If the bucket is
owned by a different account, the request will fail with an HTTP <code
style="white-space: pre;">⁠403 (Access Denied)⁠</code> error.</p></td>
</tr>
</tbody>
</table>

### Details

This is a wrapper function for `get_object` that will write the
downloaded object to the file location specified.

### Request syntax

    svc$download_file(
      Bucket = "string",
      Key = "string",
      Filename = "string"
    )

### Examples

    ## Not run: 
    # The following example retrieves an object from an S3 bucket. The request
    # specifies the range header to retrieve a specific byte range. The text file
    # is saved in a local output folder.
    svc$download_file(
      Bucket = "examplebucket",
      Key = "SampleFile.txt",
      Range = "bytes=0-9",
      Filename = "./output/SampleFile.txt"
    )

    # The following example retrieves an object from an S3 bucket. The object is
    # stored in the current directory as "HappyFace.jpg".
    svc$download_file(
      Bucket = "examplebucket",
      Key = "HappyFace.jpg",
      Filename = "HappyFace.jpg"
    )

    ## End(Not run)
