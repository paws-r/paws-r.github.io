<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_put_bucket_request_payment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets the request payment configuration for a bucket

### Description

Sets the request payment configuration for a bucket. By default, the
bucket owner pays for downloads from the bucket. This configuration
parameter enables the bucket owner (only) to specify that the person
requesting the download will be charged for the download. For more
information, see [Requester Pays
Buckets](https://docs.aws.amazon.com/AmazonS3/latest/userguide/RequesterPaysBuckets.html).

The following operations are related to `put_bucket_request_payment`:

-   `create_bucket`

-   `get_bucket_request_payment`

### Usage

    s3_put_bucket_request_payment(Bucket, ContentMD5, ChecksumAlgorithm,
      RequestPaymentConfiguration, ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_put_bucket_request_payment_:_Bucket">Bucket</code></td>
<td><p>[required] The bucket name.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_put_bucket_request_payment_:_ContentMD5">ContentMD5</code></td>
<td><p>The base64-encoded 128-bit MD5 digest of the data. You must use
this header as a message integrity check to verify that the request body
was not corrupted in transit. For more information, see <a
href="https://www.ietf.org/rfc/rfc1864.txt">RFC 1864</a>.</p>
<p>For requests made using the Amazon Web Services Command Line
Interface (CLI) or Amazon Web Services SDKs, this field is calculated
automatically.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_put_bucket_request_payment_:_ChecksumAlgorithm">ChecksumAlgorithm</code></td>
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
id="s3_put_bucket_request_payment_:_RequestPaymentConfiguration">RequestPaymentConfiguration</code></td>
<td><p>[required] Container for Payer.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_put_bucket_request_payment_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
<td><p>The account ID of the expected bucket owner. If the bucket is
owned by a different account, the request fails with the HTTP status
code <code style="white-space: pre;">⁠403 Forbidden⁠</code> (access
denied).</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_bucket_request_payment(
      Bucket = "string",
      ContentMD5 = "string",
      ChecksumAlgorithm = "CRC32"|"CRC32C"|"SHA1"|"SHA256",
      RequestPaymentConfiguration = list(
        Payer = "Requester"|"BucketOwner"
      ),
      ExpectedBucketOwner = "string"
    )

### Examples

    ## Not run: 
    # The following example sets request payment configuration on a bucket so
    # that person requesting the download is charged.
    svc$put_bucket_request_payment(
      Bucket = "examplebucket",
      RequestPaymentConfiguration = list(
        Payer = "Requester"
      )
    )

    ## End(Not run)
