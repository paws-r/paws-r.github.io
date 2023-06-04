<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_get_bucket_location</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the Region the bucket resides in

### Description

Returns the Region the bucket resides in. You set the bucket's Region
using the `LocationConstraint` request parameter in a `create_bucket`
request. For more information, see `create_bucket`.

To use this API operation against an access point, provide the alias of
the access point in place of the bucket name.

To use this API operation against an Object Lambda access point, provide
the alias of the Object Lambda access point in place of the bucket name.
If the Object Lambda access point alias in a request is not valid, the
error code `InvalidAccessPointAliasError` is returned. For more
information about `InvalidAccessPointAliasError`, see [List of Error
Codes](https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#ErrorCodeList).

We recommend that you use `head_bucket` to return the Region that a
bucket resides in. For backward compatibility, Amazon S3 continues to
support GetBucketLocation.

The following operations are related to `get_bucket_location`:

-   `get_object`

-   `create_bucket`

### Usage

    s3_get_bucket_location(Bucket, ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_get_bucket_location_:_Bucket">Bucket</code></td>
<td><p>[required] The name of the bucket for which to get the
location.</p>
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
id="s3_get_bucket_location_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
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
      LocationConstraint = "af-south-1"|"ap-east-1"|"ap-northeast-1"|"ap-northeast-2"|"ap-northeast-3"|"ap-south-1"|"ap-southeast-1"|"ap-southeast-2"|"ap-southeast-3"|"ca-central-1"|"cn-north-1"|"cn-northwest-1"|"EU"|"eu-central-1"|"eu-north-1"|"eu-south-1"|"eu-west-1"|"eu-west-2"|"eu-west-3"|"me-south-1"|"sa-east-1"|"us-east-2"|"us-gov-east-1"|"us-gov-west-1"|"us-west-1"|"us-west-2"
    )

### Request syntax

    svc$get_bucket_location(
      Bucket = "string",
      ExpectedBucketOwner = "string"
    )

### Examples

    ## Not run: 
    # The following example returns bucket location.
    svc$get_bucket_location(
      Bucket = "examplebucket"
    )

    ## End(Not run)
