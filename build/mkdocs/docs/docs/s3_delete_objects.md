<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_delete_objects</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This action enables you to delete multiple objects from a bucket using a single HTTP request

### Description

This action enables you to delete multiple objects from a bucket using a
single HTTP request. If you know the object keys that you want to
delete, then this action provides a suitable alternative to sending
individual delete requests, reducing per-request overhead.

The request contains a list of up to 1000 keys that you want to delete.
In the XML, you provide the object key names, and optionally, version
IDs if you want to delete a specific version of the object from a
versioning-enabled bucket. For each key, Amazon S3 performs a delete
action and returns the result of that delete, success, or failure, in
the response. Note that if the object specified in the request is not
found, Amazon S3 returns the result as deleted.

The action supports two modes for the response: verbose and quiet. By
default, the action uses verbose mode in which the response includes the
result of deletion of each key in your request. In quiet mode the
response includes only keys where the delete action encountered an
error. For a successful deletion, the action does not return any
information about the delete in the response body.

When performing this action on an MFA Delete enabled bucket, that
attempts to delete any versioned objects, you must include an MFA token.
If you do not provide one, the entire request will fail, even if there
are non-versioned objects you are trying to delete. If you provide an
invalid token, whether there are versioned keys in the request or not,
the entire Multi-Object Delete request will fail. For information about
MFA Delete, see [MFA
Delete](https://docs.aws.amazon.com/AmazonS3/latest/userguide/Versioning.html#MultiFactorAuthenticationDelete).

Finally, the Content-MD5 header is required for all Multi-Object Delete
requests. Amazon S3 uses the header value to ensure that your request
body has not been altered in transit.

The following operations are related to `delete_objects`:

-   `create_multipart_upload`

-   `upload_part`

-   `complete_multipart_upload`

-   `list_parts`

-   `abort_multipart_upload`

### Usage

    s3_delete_objects(Bucket, Delete, MFA, RequestPayer,
      BypassGovernanceRetention, ExpectedBucketOwner, ChecksumAlgorithm)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_delete_objects_:_Bucket">Bucket</code></td>
<td><p>[required] The bucket name containing the objects to delete.</p>
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
<td><code id="s3_delete_objects_:_Delete">Delete</code></td>
<td><p>[required] Container for the request.</p></td>
</tr>
<tr class="odd">
<td><code id="s3_delete_objects_:_MFA">MFA</code></td>
<td><p>The concatenation of the authentication device's serial number, a
space, and the value that is displayed on your authentication device.
Required to permanently delete a versioned object if versioning is
configured with MFA delete enabled.</p></td>
</tr>
<tr class="even">
<td><code id="s3_delete_objects_:_RequestPayer">RequestPayer</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="s3_delete_objects_:_BypassGovernanceRetention">BypassGovernanceRetention</code></td>
<td><p>Specifies whether you want to delete this object even if it has a
Governance-type Object Lock in place. To use this header, you must have
the <code>s3:BypassGovernanceRetention</code> permission.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_delete_objects_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
<td><p>The account ID of the expected bucket owner. If the bucket is
owned by a different account, the request fails with the HTTP status
code <code style="white-space: pre;">⁠403 Forbidden⁠</code> (access
denied).</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_delete_objects_:_ChecksumAlgorithm">ChecksumAlgorithm</code></td>
<td><p>Indicates the algorithm used to create the checksum for the
object when using the SDK. This header will not provide any additional
functionality if not using the SDK. When sending this header, there must
be a corresponding <code>x-amz-checksum</code> or
<code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the
request with the HTTP status code <code
style="white-space: pre;">⁠400 Bad Request⁠</code>. For more information,
see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking
object integrity</a> in the <em>Amazon S3 User Guide</em>.</p>
<p>If you provide an individual checksum, Amazon S3 ignores any provided
<code>ChecksumAlgorithm</code> parameter.</p>
<p>This checksum algorithm must be the same for all parts and it match
the checksum value supplied in the <code>create_multipart_upload</code>
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Deleted = list(
        list(
          Key = "string",
          VersionId = "string",
          DeleteMarker = TRUE|FALSE,
          DeleteMarkerVersionId = "string"
        )
      ),
      RequestCharged = "requester",
      Errors = list(
        list(
          Key = "string",
          VersionId = "string",
          Code = "string",
          Message = "string"
        )
      )
    )

### Request syntax

    svc$delete_objects(
      Bucket = "string",
      Delete = list(
        Objects = list(
          list(
            Key = "string",
            VersionId = "string"
          )
        ),
        Quiet = TRUE|FALSE
      ),
      MFA = "string",
      RequestPayer = "requester",
      BypassGovernanceRetention = TRUE|FALSE,
      ExpectedBucketOwner = "string",
      ChecksumAlgorithm = "CRC32"|"CRC32C"|"SHA1"|"SHA256"
    )

### Examples

    ## Not run: 
    # The following example deletes objects from a bucket. The request
    # specifies object versions. S3 deletes specific object versions and
    # returns the key and versions of deleted objects in the response.
    svc$delete_objects(
      Bucket = "examplebucket",
      Delete = list(
        Objects = list(
          list(
            Key = "HappyFace.jpg",
            VersionId = "2LWg7lQLnY41.maGB5Z6SWW.dcq0vx7b"
          ),
          list(
            Key = "HappyFace.jpg",
            VersionId = "yoz3HB.ZhCS_tKVEmIOr7qYyyAaZSKVd"
          )
        ),
        Quiet = FALSE
      )
    )

    # The following example deletes objects from a bucket. The bucket is
    # versioned, and the request does not specify the object version to
    # delete. In this case, all versions remain in the bucket and S3 adds a
    # delete marker.
    svc$delete_objects(
      Bucket = "examplebucket",
      Delete = list(
        Objects = list(
          list(
            Key = "objectkey1"
          ),
          list(
            Key = "objectkey2"
          )
        ),
        Quiet = FALSE
      )
    )

    ## End(Not run)
