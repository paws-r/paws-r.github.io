<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_get_bucket_request_payment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the request payment configuration of a bucket

### Description

Returns the request payment configuration of a bucket. To use this
version of the operation, you must be the bucket owner. For more
information, see [Requester Pays
Buckets](https://docs.aws.amazon.com/AmazonS3/latest/userguide/RequesterPaysBuckets.html).

The following operations are related to `get_bucket_request_payment`:

-   `list_objects`

### Usage

    s3_get_bucket_request_payment(Bucket, ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_get_bucket_request_payment_:_Bucket">Bucket</code></td>
<td><p>[required] The name of the bucket for which to get the payment
request configuration</p></td>
</tr>
<tr class="even">
<td><code
id="s3_get_bucket_request_payment_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
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
      Payer = "Requester"|"BucketOwner"
    )

### Request syntax

    svc$get_bucket_request_payment(
      Bucket = "string",
      ExpectedBucketOwner = "string"
    )

### Examples

    ## Not run: 
    # The following example retrieves bucket versioning configuration.
    svc$get_bucket_request_payment(
      Bucket = "examplebucket"
    )

    ## End(Not run)
