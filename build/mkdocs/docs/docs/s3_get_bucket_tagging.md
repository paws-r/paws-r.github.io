<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_get_bucket_tagging</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the tag set associated with the bucket

### Description

Returns the tag set associated with the bucket.

To use this operation, you must have permission to perform the
`s3:GetBucketTagging` action. By default, the bucket owner has this
permission and can grant this permission to others.

`get_bucket_tagging` has the following special error:

-   Error code: `NoSuchTagSet`

    -   Description: There is no tag set associated with the bucket.

The following operations are related to `get_bucket_tagging`:

-   `put_bucket_tagging`

-   `delete_bucket_tagging`

### Usage

    s3_get_bucket_tagging(Bucket, ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_get_bucket_tagging_:_Bucket">Bucket</code></td>
<td><p>[required] The name of the bucket for which to get the tagging
information.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_get_bucket_tagging_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
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
      TagSet = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Request syntax

    svc$get_bucket_tagging(
      Bucket = "string",
      ExpectedBucketOwner = "string"
    )

### Examples

    ## Not run: 
    # The following example returns tag set associated with a bucket
    svc$get_bucket_tagging(
      Bucket = "examplebucket"
    )

    ## End(Not run)
