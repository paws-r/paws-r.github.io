<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_put_bucket_website</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets the configuration of the website that is specified in the website subresource

### Description

Sets the configuration of the website that is specified in the `website`
subresource. To configure a bucket as a website, you can add this
subresource on the bucket with website configuration information such as
the file name of the index document and any redirect rules. For more
information, see [Hosting Websites on Amazon
S3](https://docs.aws.amazon.com/AmazonS3/latest/userguide/WebsiteHosting.html).

This PUT action requires the `S3:PutBucketWebsite` permission. By
default, only the bucket owner can configure the website attached to a
bucket; however, bucket owners can allow other users to set the website
configuration by writing a bucket policy that grants them the
`S3:PutBucketWebsite` permission.

To redirect all website requests sent to the bucket's website endpoint,
you add a website configuration with the following elements. Because all
requests are sent to another website, you don't need to provide index
document name for the bucket.

-   `WebsiteConfiguration`

-   `RedirectAllRequestsTo`

-   `HostName`

-   `Protocol`

If you want granular control over redirects, you can use the following
elements to add routing rules that describe conditions for redirecting
requests and information about the redirect destination. In this case,
the website configuration must provide an index document for the bucket,
because some requests might not be redirected.

-   `WebsiteConfiguration`

-   `IndexDocument`

-   `Suffix`

-   `ErrorDocument`

-   `Key`

-   `RoutingRules`

-   `RoutingRule`

-   `Condition`

-   `HttpErrorCodeReturnedEquals`

-   `KeyPrefixEquals`

-   `Redirect`

-   `Protocol`

-   `HostName`

-   `ReplaceKeyPrefixWith`

-   `ReplaceKeyWith`

-   `HttpRedirectCode`

Amazon S3 has a limitation of 50 routing rules per website
configuration. If you require more than 50 routing rules, you can use
object redirect. For more information, see [Configuring an Object
Redirect](https://docs.aws.amazon.com/AmazonS3/latest/userguide/how-to-page-redirect.html)
in the *Amazon S3 User Guide*.

### Usage

    s3_put_bucket_website(Bucket, ContentMD5, ChecksumAlgorithm,
      WebsiteConfiguration, ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_put_bucket_website_:_Bucket">Bucket</code></td>
<td><p>[required] The bucket name.</p></td>
</tr>
<tr class="even">
<td><code id="s3_put_bucket_website_:_ContentMD5">ContentMD5</code></td>
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
id="s3_put_bucket_website_:_ChecksumAlgorithm">ChecksumAlgorithm</code></td>
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
id="s3_put_bucket_website_:_WebsiteConfiguration">WebsiteConfiguration</code></td>
<td><p>[required] Container for the request.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_put_bucket_website_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
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

    svc$put_bucket_website(
      Bucket = "string",
      ContentMD5 = "string",
      ChecksumAlgorithm = "CRC32"|"CRC32C"|"SHA1"|"SHA256",
      WebsiteConfiguration = list(
        ErrorDocument = list(
          Key = "string"
        ),
        IndexDocument = list(
          Suffix = "string"
        ),
        RedirectAllRequestsTo = list(
          HostName = "string",
          Protocol = "http"|"https"
        ),
        RoutingRules = list(
          list(
            Condition = list(
              HttpErrorCodeReturnedEquals = "string",
              KeyPrefixEquals = "string"
            ),
            Redirect = list(
              HostName = "string",
              HttpRedirectCode = "string",
              Protocol = "http"|"https",
              ReplaceKeyPrefixWith = "string",
              ReplaceKeyWith = "string"
            )
          )
        )
      ),
      ExpectedBucketOwner = "string"
    )

### Examples

    ## Not run: 
    # The following example adds website configuration to a bucket.
    svc$put_bucket_website(
      Bucket = "examplebucket",
      ContentMD5 = "",
      WebsiteConfiguration = list(
        ErrorDocument = list(
          Key = "error.html"
        ),
        IndexDocument = list(
          Suffix = "index.html"
        )
      )
    )

    ## End(Not run)
