<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_get_bucket_cors</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the Cross-Origin Resource Sharing (CORS) configuration information set for the bucket

### Description

Returns the Cross-Origin Resource Sharing (CORS) configuration
information set for the bucket.

To use this operation, you must have permission to perform the
`s3:GetBucketCORS` action. By default, the bucket owner has this
permission and can grant it to others.

To use this API operation against an access point, provide the alias of
the access point in place of the bucket name.

To use this API operation against an Object Lambda access point, provide
the alias of the Object Lambda access point in place of the bucket name.
If the Object Lambda access point alias in a request is not valid, the
error code `InvalidAccessPointAliasError` is returned. For more
information about `InvalidAccessPointAliasError`, see [List of Error
Codes](https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#ErrorCodeList).

For more information about CORS, see [Enabling Cross-Origin Resource
Sharing](https://docs.aws.amazon.com/AmazonS3/latest/userguide/cors.html).

The following operations are related to `get_bucket_cors`:

-   `put_bucket_cors`

-   `delete_bucket_cors`

### Usage

    s3_get_bucket_cors(Bucket, ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_get_bucket_cors_:_Bucket">Bucket</code></td>
<td><p>[required] The bucket name for which to get the cors
configuration.</p>
<p>To use this API operation against an access point, provide the alias
of the access point in place of the bucket name.</p>
<p>To use this API operation against an Object Lambda access point,
provide the alias of the Object Lambda access point in place of the
bucket name. If the Object Lambda access point alias in a request is not
valid, the error code <code>InvalidAccessPointAliasError</code> is
returned. For more information about
<code>InvalidAccessPointAliasError</code>, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#ErrorCodeList">List
of Error Codes</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_get_bucket_cors_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
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
    )

### Request syntax

    svc$get_bucket_cors(
      Bucket = "string",
      ExpectedBucketOwner = "string"
    )

### Examples

    ## Not run: 
    # The following example returns cross-origin resource sharing (CORS)
    # configuration set on a bucket.
    svc$get_bucket_cors(
      Bucket = "examplebucket"
    )

    ## End(Not run)
