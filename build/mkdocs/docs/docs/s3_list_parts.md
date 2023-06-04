<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_list_parts</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the parts that have been uploaded for a specific multipart upload

### Description

Lists the parts that have been uploaded for a specific multipart upload.
This operation must include the upload ID, which you obtain by sending
the initiate multipart upload request (see `create_multipart_upload`).
This request returns a maximum of 1,000 uploaded parts. The default
number of parts returned is 1,000 parts. You can restrict the number of
parts returned by specifying the `max-parts` request parameter. If your
multipart upload consists of more than 1,000 parts, the response returns
an `IsTruncated` field with the value of true, and a
`NextPartNumberMarker` element. In subsequent `list_parts` requests you
can include the part-number-marker query string parameter and set its
value to the `NextPartNumberMarker` field value from the previous
response.

If the upload was created using a checksum algorithm, you will need to
have permission to the `kms:Decrypt` action for the request to succeed.

For more information on multipart uploads, see [Uploading Objects Using
Multipart
Upload](https://docs.aws.amazon.com/AmazonS3/latest/userguide/mpuoverview.html).

For information on permissions required to use the multipart upload API,
see [Multipart Upload and
Permissions](https://docs.aws.amazon.com/AmazonS3/latest/userguide/mpuoverview.html).

The following operations are related to `list_parts`:

-   `create_multipart_upload`

-   `upload_part`

-   `complete_multipart_upload`

-   `abort_multipart_upload`

-   `get_object_attributes`

-   `list_multipart_uploads`

### Usage

    s3_list_parts(Bucket, Key, MaxParts, PartNumberMarker, UploadId,
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
<td><code id="s3_list_parts_:_Bucket">Bucket</code></td>
<td><p>[required] The name of the bucket to which the parts are being
uploaded.</p>
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
<td><code id="s3_list_parts_:_Key">Key</code></td>
<td><p>[required] Object key for which the multipart upload was
initiated.</p></td>
</tr>
<tr class="odd">
<td><code id="s3_list_parts_:_MaxParts">MaxParts</code></td>
<td><p>Sets the maximum number of parts to return.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_list_parts_:_PartNumberMarker">PartNumberMarker</code></td>
<td><p>Specifies the part after which listing should begin. Only parts
with higher part numbers will be listed.</p></td>
</tr>
<tr class="odd">
<td><code id="s3_list_parts_:_UploadId">UploadId</code></td>
<td><p>[required] Upload ID identifying the multipart upload whose parts
are being listed.</p></td>
</tr>
<tr class="even">
<td><code id="s3_list_parts_:_RequestPayer">RequestPayer</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="s3_list_parts_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
<td><p>The account ID of the expected bucket owner. If the bucket is
owned by a different account, the request fails with the HTTP status
code <code style="white-space: pre;">⁠403 Forbidden⁠</code> (access
denied).</p></td>
</tr>
<tr class="even">
<td><code
id="s3_list_parts_:_SSECustomerAlgorithm">SSECustomerAlgorithm</code></td>
<td><p>The server-side encryption (SSE) algorithm used to encrypt the
object. This parameter is needed only when the object was created using
a checksum algorithm. For more information, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/ServerSideEncryptionCustomerKeys.html">Protecting
data using SSE-C keys</a> in the <em>Amazon S3 User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code id="s3_list_parts_:_SSECustomerKey">SSECustomerKey</code></td>
<td><p>The server-side encryption (SSE) customer managed key. This
parameter is needed only when the object was created using a checksum
algorithm. For more information, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/ServerSideEncryptionCustomerKeys.html">Protecting
data using SSE-C keys</a> in the <em>Amazon S3 User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_list_parts_:_SSECustomerKeyMD5">SSECustomerKeyMD5</code></td>
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
      AbortDate = as.POSIXct(
        "2015-01-01"
      ),
      AbortRuleId = "string",
      Bucket = "string",
      Key = "string",
      UploadId = "string",
      PartNumberMarker = 123,
      NextPartNumberMarker = 123,
      MaxParts = 123,
      IsTruncated = TRUE|FALSE,
      Parts = list(
        list(
          PartNumber = 123,
          LastModified = as.POSIXct(
            "2015-01-01"
          ),
          ETag = "string",
          Size = 123,
          ChecksumCRC32 = "string",
          ChecksumCRC32C = "string",
          ChecksumSHA1 = "string",
          ChecksumSHA256 = "string"
        )
      ),
      Initiator = list(
        ID = "string",
        DisplayName = "string"
      ),
      Owner = list(
        DisplayName = "string",
        ID = "string"
      ),
      StorageClass = "STANDARD"|"REDUCED_REDUNDANCY"|"STANDARD_IA"|"ONEZONE_IA"|"INTELLIGENT_TIERING"|"GLACIER"|"DEEP_ARCHIVE"|"OUTPOSTS"|"GLACIER_IR"|"SNOW",
      RequestCharged = "requester",
      ChecksumAlgorithm = "CRC32"|"CRC32C"|"SHA1"|"SHA256"
    )

### Request syntax

    svc$list_parts(
      Bucket = "string",
      Key = "string",
      MaxParts = 123,
      PartNumberMarker = 123,
      UploadId = "string",
      RequestPayer = "requester",
      ExpectedBucketOwner = "string",
      SSECustomerAlgorithm = "string",
      SSECustomerKey = raw,
      SSECustomerKeyMD5 = "string"
    )

### Examples

    ## Not run: 
    # The following example lists parts uploaded for a specific multipart
    # upload.
    svc$list_parts(
      Bucket = "examplebucket",
      Key = "bigobject",
      UploadId = "example7YPBOJuoFiQ9cz4P3Pe6FIZwO4f7wN93uHsNBEw97pl5eNwzExg0LA..."
    )

    ## End(Not run)
