<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_delete_object_tagging</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the entire tag set from the specified object

### Description

Removes the entire tag set from the specified object. For more
information about managing object tags, see [Object
Tagging](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-tagging.html).

To use this operation, you must have permission to perform the
`s3:DeleteObjectTagging` action.

To delete tags of a specific object version, add the `versionId` query
parameter in the request. You will need permission for the
`s3:DeleteObjectVersionTagging` action.

The following operations are related to `delete_object_tagging`:

-   `put_object_tagging`

-   `get_object_tagging`

### Usage

    s3_delete_object_tagging(Bucket, Key, VersionId, ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_delete_object_tagging_:_Bucket">Bucket</code></td>
<td><p>[required] The bucket name containing the objects from which to
remove the tags.</p>
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
<td><code id="s3_delete_object_tagging_:_Key">Key</code></td>
<td><p>[required] The key that identifies the object in the bucket from
which to remove all tags.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_delete_object_tagging_:_VersionId">VersionId</code></td>
<td><p>The versionId of the object that the tag-set will be removed
from.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_delete_object_tagging_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
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
      VersionId = "string"
    )

### Request syntax

    svc$delete_object_tagging(
      Bucket = "string",
      Key = "string",
      VersionId = "string",
      ExpectedBucketOwner = "string"
    )

### Examples

    ## Not run: 
    # The following example removes tag set associated with the specified
    # object version. The request specifies both the object key and object
    # version.
    svc$delete_object_tagging(
      Bucket = "examplebucket",
      Key = "HappyFace.jpg",
      VersionId = "ydlaNkwWm0SfKJR.T1b1fIdPRbldTYRI"
    )

    # The following example removes tag set associated with the specified
    # object. If the bucket is versioning enabled, the operation removes tag
    # set from the latest object version.
    svc$delete_object_tagging(
      Bucket = "examplebucket",
      Key = "HappyFace.jpg"
    )

    ## End(Not run)
