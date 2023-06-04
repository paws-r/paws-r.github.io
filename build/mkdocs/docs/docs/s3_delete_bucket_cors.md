<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_delete_bucket_cors</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the cors configuration information set for the bucket

### Description

Deletes the `cors` configuration information set for the bucket.

To use this operation, you must have permission to perform the
`s3:PutBucketCORS` action. The bucket owner has this permission by
default and can grant this permission to others.

For information about `cors`, see [Enabling Cross-Origin Resource
Sharing](https://docs.aws.amazon.com/AmazonS3/latest/userguide/cors.html)
in the *Amazon S3 User Guide*.

The following operations are related to `delete_bucket_cors`:

-   `put_bucket_cors`

-   [RESTOPTIONSobject](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTOPTIONSobject.html)

### Usage

    s3_delete_bucket_cors(Bucket, ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_delete_bucket_cors_:_Bucket">Bucket</code></td>
<td><p>[required] Specifies the bucket whose <code>cors</code>
configuration is being deleted.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_delete_bucket_cors_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
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

    svc$delete_bucket_cors(
      Bucket = "string",
      ExpectedBucketOwner = "string"
    )

### Examples

    ## Not run: 
    # The following example deletes CORS configuration on a bucket.
    svc$delete_bucket_cors(
      Bucket = "examplebucket"
    )

    ## End(Not run)
