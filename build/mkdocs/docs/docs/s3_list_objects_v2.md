<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_list_objects_v2</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns some or all (up to 1,000) of the objects in a bucket with each request

### Description

Returns some or all (up to 1,000) of the objects in a bucket with each
request. You can use the request parameters as selection criteria to
return a subset of the objects in a bucket. A `⁠200 OK⁠` response can
contain valid or invalid XML. Make sure to design your application to
parse the contents of the response and handle it appropriately. Objects
are returned sorted in an ascending order of the respective key names in
the list. For more information about listing objects, see [Listing
object keys
programmatically](https://docs.aws.amazon.com/AmazonS3/latest/userguide/ListingKeysUsingAPIs.html)

To use this operation, you must have READ access to the bucket.

To use this action in an Identity and Access Management (IAM) policy,
you must have permissions to perform the `s3:ListBucket` action. The
bucket owner has this permission by default and can grant this
permission to others. For more information about permissions, see
[Permissions Related to Bucket Subresource
Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and [Managing Access Permissions to Your Amazon S3
Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

This section describes the latest revision of this action. We recommend
that you use this revised API for application development. For backward
compatibility, Amazon S3 continues to support the prior version of this
API, `list_objects`.

To get a list of your buckets, see `list_buckets`.

The following operations are related to `list_objects_v2`:

-   `get_object`

-   `put_object`

-   `create_bucket`

### Usage

    s3_list_objects_v2(Bucket, Delimiter, EncodingType, MaxKeys, Prefix,
      ContinuationToken, FetchOwner, StartAfter, RequestPayer,
      ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_list_objects_v2_:_Bucket">Bucket</code></td>
<td><p>[required] Bucket name to list.</p>
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
<td><code id="s3_list_objects_v2_:_Delimiter">Delimiter</code></td>
<td><p>A delimiter is a character you use to group keys.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_list_objects_v2_:_EncodingType">EncodingType</code></td>
<td><p>Encoding type used by Amazon S3 to encode object keys in the
response.</p></td>
</tr>
<tr class="even">
<td><code id="s3_list_objects_v2_:_MaxKeys">MaxKeys</code></td>
<td><p>Sets the maximum number of keys returned in the response. By
default the action returns up to 1,000 key names. The response might
contain fewer keys but will never contain more.</p></td>
</tr>
<tr class="odd">
<td><code id="s3_list_objects_v2_:_Prefix">Prefix</code></td>
<td><p>Limits the response to keys that begin with the specified
prefix.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_list_objects_v2_:_ContinuationToken">ContinuationToken</code></td>
<td><p>ContinuationToken indicates Amazon S3 that the list is being
continued on this bucket with a token. ContinuationToken is obfuscated
and is not a real key.</p></td>
</tr>
<tr class="odd">
<td><code id="s3_list_objects_v2_:_FetchOwner">FetchOwner</code></td>
<td><p>The owner field is not present in listV2 by default, if you want
to return owner field with each key in the result then set the fetch
owner field to true.</p></td>
</tr>
<tr class="even">
<td><code id="s3_list_objects_v2_:_StartAfter">StartAfter</code></td>
<td><p>StartAfter is where you want Amazon S3 to start listing from.
Amazon S3 starts listing after this specified key. StartAfter can be any
key in the bucket.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_list_objects_v2_:_RequestPayer">RequestPayer</code></td>
<td><p>Confirms that the requester knows that she or he will be charged
for the list objects request in V2 style. Bucket owners need not specify
this parameter in their requests.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_list_objects_v2_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
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
      IsTruncated = TRUE|FALSE,
      Contents = list(
        list(
          Key = "string",
          LastModified = as.POSIXct(
            "2015-01-01"
          ),
          ETag = "string",
          ChecksumAlgorithm = list(
            "CRC32"|"CRC32C"|"SHA1"|"SHA256"
          ),
          Size = 123,
          StorageClass = "STANDARD"|"REDUCED_REDUNDANCY"|"GLACIER"|"STANDARD_IA"|"ONEZONE_IA"|"INTELLIGENT_TIERING"|"DEEP_ARCHIVE"|"OUTPOSTS"|"GLACIER_IR"|"SNOW",
          Owner = list(
            DisplayName = "string",
            ID = "string"
          )
        )
      ),
      Name = "string",
      Prefix = "string",
      Delimiter = "string",
      MaxKeys = 123,
      CommonPrefixes = list(
        list(
          Prefix = "string"
        )
      ),
      EncodingType = "url",
      KeyCount = 123,
      ContinuationToken = "string",
      NextContinuationToken = "string",
      StartAfter = "string"
    )

### Request syntax

    svc$list_objects_v2(
      Bucket = "string",
      Delimiter = "string",
      EncodingType = "url",
      MaxKeys = 123,
      Prefix = "string",
      ContinuationToken = "string",
      FetchOwner = TRUE|FALSE,
      StartAfter = "string",
      RequestPayer = "requester",
      ExpectedBucketOwner = "string"
    )

### Examples

    ## Not run: 
    # The following example retrieves object list. The request specifies max
    # keys to limit response to include only 2 object keys.
    svc$list_objects_v2(
      Bucket = "DOC-EXAMPLE-BUCKET",
      MaxKeys = "2"
    )

    ## End(Not run)
