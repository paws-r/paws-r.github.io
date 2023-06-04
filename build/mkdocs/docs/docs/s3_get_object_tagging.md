<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_get_object_tagging</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the tag-set of an object

### Description

Returns the tag-set of an object. You send the GET request against the
tagging subresource associated with the object.

To use this operation, you must have permission to perform the
`s3:GetObjectTagging` action. By default, the GET action returns
information about current version of an object. For a versioned bucket,
you can have multiple versions of an object in your bucket. To retrieve
tags of any other version, use the versionId query parameter. You also
need permission for the `s3:GetObjectVersionTagging` action.

By default, the bucket owner has this permission and can grant this
permission to others.

For information about the Amazon S3 object tagging feature, see [Object
Tagging](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-tagging.html).

The following actions are related to `get_object_tagging`:

-   `delete_object_tagging`

-   `get_object_attributes`

-   `put_object_tagging`

### Usage

    s3_get_object_tagging(Bucket, Key, VersionId, ExpectedBucketOwner,
      RequestPayer)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_get_object_tagging_:_Bucket">Bucket</code></td>
<td><p>[required] The bucket name containing the object for which to get
the tagging information.</p>
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
<td><code id="s3_get_object_tagging_:_Key">Key</code></td>
<td><p>[required] Object key for which to get the tagging
information.</p></td>
</tr>
<tr class="odd">
<td><code id="s3_get_object_tagging_:_VersionId">VersionId</code></td>
<td><p>The versionId of the object for which to get the tagging
information.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_get_object_tagging_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
<td><p>The account ID of the expected bucket owner. If the bucket is
owned by a different account, the request fails with the HTTP status
code <code style="white-space: pre;">⁠403 Forbidden⁠</code> (access
denied).</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_get_object_tagging_:_RequestPayer">RequestPayer</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      VersionId = "string",
      TagSet = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Request syntax

    svc$get_object_tagging(
      Bucket = "string",
      Key = "string",
      VersionId = "string",
      ExpectedBucketOwner = "string",
      RequestPayer = "requester"
    )

### Examples

    ## Not run: 
    # The following example retrieves tag set of an object. The request
    # specifies object version.
    svc$get_object_tagging(
      Bucket = "examplebucket",
      Key = "exampleobject",
      VersionId = "ydlaNkwWm0SfKJR.T1b1fIdPRbldTYRI"
    )

    # The following example retrieves tag set of an object.
    svc$get_object_tagging(
      Bucket = "examplebucket",
      Key = "HappyFace.jpg"
    )

    ## End(Not run)
