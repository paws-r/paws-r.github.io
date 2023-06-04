<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_get_object_legal_hold</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets an object's current legal hold status

### Description

Gets an object's current legal hold status. For more information, see
[Locking
Objects](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lock.html).

This action is not supported by Amazon S3 on Outposts.

The following action is related to `get_object_legal_hold`:

-   `get_object_attributes`

### Usage

    s3_get_object_legal_hold(Bucket, Key, VersionId, RequestPayer,
      ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_get_object_legal_hold_:_Bucket">Bucket</code></td>
<td><p>[required] The bucket name containing the object whose legal hold
status you want to retrieve.</p>
<p>When using this action with an access point, you must direct requests
to the access point hostname. The access point hostname takes the form
<em>AccessPointName</em>-<em>AccountId</em>.s3-accesspoint.<em>Region</em>.amazonaws.com.
When using this action with an access point through the Amazon Web
Services SDKs, you provide the access point ARN in place of the bucket
name. For more information about access point ARNs, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using
access points</a> in the <em>Amazon S3 User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code id="s3_get_object_legal_hold_:_Key">Key</code></td>
<td><p>[required] The key name for the object whose legal hold status
you want to retrieve.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_get_object_legal_hold_:_VersionId">VersionId</code></td>
<td><p>The version ID of the object whose legal hold status you want to
retrieve.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_get_object_legal_hold_:_RequestPayer">RequestPayer</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="s3_get_object_legal_hold_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
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
      LegalHold = list(
        Status = "ON"|"OFF"
      )
    )

### Request syntax

    svc$get_object_legal_hold(
      Bucket = "string",
      Key = "string",
      VersionId = "string",
      RequestPayer = "requester",
      ExpectedBucketOwner = "string"
    )
