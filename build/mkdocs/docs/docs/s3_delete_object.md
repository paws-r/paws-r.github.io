<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_delete_object</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the null version (if there is one) of an object and inserts a delete marker, which becomes the latest version of the object

### Description

Removes the null version (if there is one) of an object and inserts a
delete marker, which becomes the latest version of the object. If there
isn't a null version, Amazon S3 does not remove any objects but will
still respond that the command was successful.

To remove a specific version, you must use the version Id subresource.
Using this subresource permanently deletes the version. If the object
deleted is a delete marker, Amazon S3 sets the response header,
`x-amz-delete-marker`, to true.

If the object you want to delete is in a bucket where the bucket
versioning configuration is MFA Delete enabled, you must include the
`x-amz-mfa` request header in the DELETE `versionId` request. Requests
that include `x-amz-mfa` must use HTTPS.

For more information about MFA Delete, see [Using MFA
Delete](https://docs.aws.amazon.com/AmazonS3/latest/userguide/UsingMFADelete.html).
To see sample requests that use versioning, see [Sample
Request](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteObject.html#ExampleVersionObjectDelete).

You can delete objects by explicitly calling DELETE Object or configure
its lifecycle (`put_bucket_lifecycle`) to enable Amazon S3 to remove
them for you. If you want to block users or accounts from removing or
deleting objects from your bucket, you must deny them the
`s3:DeleteObject`, `s3:DeleteObjectVersion`, and
`s3:PutLifeCycleConfiguration` actions.

The following action is related to `delete_object`:

-   `put_object`

### Usage

    s3_delete_object(Bucket, Key, MFA, VersionId, RequestPayer,
      BypassGovernanceRetention, ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_delete_object_:_Bucket">Bucket</code></td>
<td><p>[required] The bucket name of the bucket containing the
object.</p>
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
<td><code id="s3_delete_object_:_Key">Key</code></td>
<td><p>[required] Key name of the object to delete.</p></td>
</tr>
<tr class="odd">
<td><code id="s3_delete_object_:_MFA">MFA</code></td>
<td><p>The concatenation of the authentication device's serial number, a
space, and the value that is displayed on your authentication device.
Required to permanently delete a versioned object if versioning is
configured with MFA delete enabled.</p></td>
</tr>
<tr class="even">
<td><code id="s3_delete_object_:_VersionId">VersionId</code></td>
<td><p>VersionId used to reference a specific version of the
object.</p></td>
</tr>
<tr class="odd">
<td><code id="s3_delete_object_:_RequestPayer">RequestPayer</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="s3_delete_object_:_BypassGovernanceRetention">BypassGovernanceRetention</code></td>
<td><p>Indicates whether S3 Object Lock should bypass Governance-mode
restrictions to process this operation. To use this header, you must
have the <code>s3:BypassGovernanceRetention</code> permission.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_delete_object_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
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
      DeleteMarker = TRUE|FALSE,
      VersionId = "string",
      RequestCharged = "requester"
    )

### Request syntax

    svc$delete_object(
      Bucket = "string",
      Key = "string",
      MFA = "string",
      VersionId = "string",
      RequestPayer = "requester",
      BypassGovernanceRetention = TRUE|FALSE,
      ExpectedBucketOwner = "string"
    )

### Examples

    ## Not run: 
    # The following example deletes an object from a non-versioned bucket.
    svc$delete_object(
      Bucket = "ExampleBucket",
      Key = "HappyFace.jpg"
    )

    # The following example deletes an object from an S3 bucket.
    svc$delete_object(
      Bucket = "examplebucket",
      Key = "objectkey.jpg"
    )

    ## End(Not run)
