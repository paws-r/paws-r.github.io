<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_put_object_lock_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Places an Object Lock configuration on the specified bucket

### Description

Places an Object Lock configuration on the specified bucket. The rule
specified in the Object Lock configuration will be applied by default to
every new object placed in the specified bucket. For more information,
see [Locking
Objects](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lock.html).

-   The `DefaultRetention` settings require both a mode and a period.

-   The `DefaultRetention` period can be either `Days` or `Years` but
    you must select one. You cannot specify `Days` and `Years` at the
    same time.

-   You can only enable Object Lock for new buckets. If you want to turn
    on Object Lock for an existing bucket, contact Amazon Web Services
    Support.

### Usage

    s3_put_object_lock_configuration(Bucket, ObjectLockConfiguration,
      RequestPayer, Token, ContentMD5, ChecksumAlgorithm, ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="s3_put_object_lock_configuration_:_Bucket">Bucket</code></td>
<td><p>[required] The bucket whose Object Lock configuration you want to
create or replace.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_put_object_lock_configuration_:_ObjectLockConfiguration">ObjectLockConfiguration</code></td>
<td><p>The Object Lock configuration that you want to apply to the
specified bucket.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_put_object_lock_configuration_:_RequestPayer">RequestPayer</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="s3_put_object_lock_configuration_:_Token">Token</code></td>
<td><p>A token to allow Object Lock to be enabled for an existing
bucket.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_put_object_lock_configuration_:_ContentMD5">ContentMD5</code></td>
<td><p>The MD5 hash for the request body.</p>
<p>For requests made using the Amazon Web Services Command Line
Interface (CLI) or Amazon Web Services SDKs, this field is calculated
automatically.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_put_object_lock_configuration_:_ChecksumAlgorithm">ChecksumAlgorithm</code></td>
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
<tr class="odd">
<td><code
id="s3_put_object_lock_configuration_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
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

    svc$put_object_lock_configuration(
      Bucket = "string",
      ObjectLockConfiguration = list(
        ObjectLockEnabled = "Enabled",
        Rule = list(
          DefaultRetention = list(
            Mode = "GOVERNANCE"|"COMPLIANCE",
            Days = 123,
            Years = 123
          )
        )
      ),
      RequestPayer = "requester",
      Token = "string",
      ContentMD5 = "string",
      ChecksumAlgorithm = "CRC32"|"CRC32C"|"SHA1"|"SHA256",
      ExpectedBucketOwner = "string"
    )
