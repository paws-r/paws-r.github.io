<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_get_bucket_versioning</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the versioning state of a bucket

### Description

Returns the versioning state of a bucket.

To retrieve the versioning state of a bucket, you must be the bucket
owner.

This implementation also returns the MFA Delete status of the versioning
state. If the MFA Delete status is `enabled`, the bucket owner must use
an authentication device to change the versioning state of the bucket.

The following operations are related to `get_bucket_versioning`:

-   `get_object`

-   `put_object`

-   `delete_object`

### Usage

    s3_get_bucket_versioning(Bucket, ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_get_bucket_versioning_:_Bucket">Bucket</code></td>
<td><p>[required] The name of the bucket for which to get the versioning
information.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_get_bucket_versioning_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
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
      Status = "Enabled"|"Suspended",
      MFADelete = "Enabled"|"Disabled"
    )

### Request syntax

    svc$get_bucket_versioning(
      Bucket = "string",
      ExpectedBucketOwner = "string"
    )

### Examples

    ## Not run: 
    # The following example retrieves bucket versioning configuration.
    svc$get_bucket_versioning(
      Bucket = "examplebucket"
    )

    ## End(Not run)
