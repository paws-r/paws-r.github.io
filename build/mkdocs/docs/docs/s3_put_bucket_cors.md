<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_put_bucket_cors</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets the cors configuration for your bucket

### Description

Sets the `cors` configuration for your bucket. If the configuration
exists, Amazon S3 replaces it.

To use this operation, you must be allowed to perform the
`s3:PutBucketCORS` action. By default, the bucket owner has this
permission and can grant it to others.

You set this configuration on a bucket so that the bucket can service
cross-origin requests. For example, you might want to enable a request
whose origin is `⁠http://www.example.com⁠` to access your Amazon S3 bucket
at `my.example.bucket.com` by using the browser's `XMLHttpRequest`
capability.

To enable cross-origin resource sharing (CORS) on a bucket, you add the
`cors` subresource to the bucket. The `cors` subresource is an XML
document in which you configure rules that identify origins and the HTTP
methods that can be executed on your bucket. The document is limited to
64 KB in size.

When Amazon S3 receives a cross-origin request (or a pre-flight OPTIONS
request) against a bucket, it evaluates the `cors` configuration on the
bucket and uses the first `CORSRule` rule that matches the incoming
browser request to enable a cross-origin request. For a rule to match,
the following conditions must be met:

-   The request's `Origin` header must match `AllowedOrigin` elements.

-   The request method (for example, GET, PUT, HEAD, and so on) or the
    `Access-Control-Request-Method` header in case of a pre-flight
    `OPTIONS` request must be one of the `AllowedMethod` elements.

-   Every header specified in the `Access-Control-Request-Headers`
    request header of a pre-flight request must match an `AllowedHeader`
    element.

For more information about CORS, go to [Enabling Cross-Origin Resource
Sharing](https://docs.aws.amazon.com/AmazonS3/latest/userguide/cors.html)
in the *Amazon S3 User Guide*.

The following operations are related to `put_bucket_cors`:

-   `get_bucket_cors`

-   `delete_bucket_cors`

-   [RESTOPTIONSobject](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTOPTIONSobject.html)

### Usage

    s3_put_bucket_cors(Bucket, CORSConfiguration, ContentMD5,
      ChecksumAlgorithm, ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_put_bucket_cors_:_Bucket">Bucket</code></td>
<td><p>[required] Specifies the bucket impacted by the
<code>cors</code>configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_put_bucket_cors_:_CORSConfiguration">CORSConfiguration</code></td>
<td><p>[required] Describes the cross-origin access configuration for
objects in an Amazon S3 bucket. For more information, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/cors.html">Enabling
Cross-Origin Resource Sharing</a> in the <em>Amazon S3 User
Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code id="s3_put_bucket_cors_:_ContentMD5">ContentMD5</code></td>
<td><p>The base64-encoded 128-bit MD5 digest of the data. This header
must be used as a message integrity check to verify that the request
body was not corrupted in transit. For more information, go to <a
href="https://www.ietf.org/rfc/rfc1864.txt">RFC 1864.</a></p>
<p>For requests made using the Amazon Web Services Command Line
Interface (CLI) or Amazon Web Services SDKs, this field is calculated
automatically.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_put_bucket_cors_:_ChecksumAlgorithm">ChecksumAlgorithm</code></td>
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
id="s3_put_bucket_cors_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
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

    svc$put_bucket_cors(
      Bucket = "string",
      CORSConfiguration = list(
        CORSRules = list(
          list(
            ID = "string",
            AllowedHeaders = list(
              "string"
            ),
            AllowedMethods = list(
              "string"
            ),
            AllowedOrigins = list(
              "string"
            ),
            ExposeHeaders = list(
              "string"
            ),
            MaxAgeSeconds = 123
          )
        )
      ),
      ContentMD5 = "string",
      ChecksumAlgorithm = "CRC32"|"CRC32C"|"SHA1"|"SHA256",
      ExpectedBucketOwner = "string"
    )

### Examples

    ## Not run: 
    # The following example enables PUT, POST, and DELETE requests from
    # www.example.com, and enables GET requests from any domain.
    svc$put_bucket_cors(
      Bucket = "",
      CORSConfiguration = list(
        CORSRules = list(
          list(
            AllowedHeaders = list(
              "*"
            ),
            AllowedMethods = list(
              "PUT",
              "POST",
              "DELETE"
            ),
            AllowedOrigins = list(
              "http://www.example.com"
            ),
            ExposeHeaders = list(
              "x-amz-server-side-encryption"
            ),
            MaxAgeSeconds = 3000L
          ),
          list(
            AllowedHeaders = list(
              "Authorization"
            ),
            AllowedMethods = list(
              "GET"
            ),
            AllowedOrigins = list(
              "*"
            ),
            MaxAgeSeconds = 3000L
          )
        )
      ),
      ContentMD5 = ""
    )

    ## End(Not run)
