<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_put_object_legal_hold</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Applies a legal hold configuration to the specified object

### Description

Applies a legal hold configuration to the specified object. For more
information, see [Locking
Objects](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lock.html).

This action is not supported by Amazon S3 on Outposts.

### Usage

    s3_put_object_legal_hold(Bucket, Key, LegalHold, RequestPayer,
      VersionId, ContentMD5, ChecksumAlgorithm, ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_put_object_legal_hold_:_Bucket">Bucket</code></td>
<td><p>[required] The bucket name containing the object that you want to
place a legal hold on.</p>
<p>When using this action with an access point, you must direct requests
to the access point hostname. The access point hostname takes the form
<em>AccessPointName</em>-<em>AccountId</em>.s3-accesspoint.<em>Region</em>.amazonaws.com.
When using this action with an access point through the Amazon Web
Services SDKs, you provide the access point ARN in place of the bucket
name. For more information about access point ARNs, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using
access points</a> in the <em>Amazon S3 User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code id="s3_put_object_legal_hold_:_Key">Key</code></td>
<td><p>[required] The key name for the object that you want to place a
legal hold on.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_put_object_legal_hold_:_LegalHold">LegalHold</code></td>
<td><p>Container element for the legal hold configuration you want to
apply to the specified object.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_put_object_legal_hold_:_RequestPayer">RequestPayer</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="s3_put_object_legal_hold_:_VersionId">VersionId</code></td>
<td><p>The version ID of the object that you want to place a legal hold
on.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_put_object_legal_hold_:_ContentMD5">ContentMD5</code></td>
<td><p>The MD5 hash for the request body.</p>
<p>For requests made using the Amazon Web Services Command Line
Interface (CLI) or Amazon Web Services SDKs, this field is calculated
automatically.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_put_object_legal_hold_:_ChecksumAlgorithm">ChecksumAlgorithm</code></td>
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
<td><code
id="s3_put_object_legal_hold_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
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
      RequestCharged = "requester"
    )

### Request syntax

    svc$put_object_legal_hold(
      Bucket = "string",
      Key = "string",
      LegalHold = list(
        Status = "ON"|"OFF"
      ),
      RequestPayer = "requester",
      VersionId = "string",
      ContentMD5 = "string",
      ChecksumAlgorithm = "CRC32"|"CRC32C"|"SHA1"|"SHA256",
      ExpectedBucketOwner = "string"
    )
