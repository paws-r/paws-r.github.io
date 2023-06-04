<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_get_object_acl</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the access control list (ACL) of an object

### Description

Returns the access control list (ACL) of an object. To use this
operation, you must have `s3:GetObjectAcl` permissions or `READ_ACP`
access to the object. For more information, see [Mapping of ACL
permissions and access policy
permissions](https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html#acl-access-policy-permission-mapping)
in the *Amazon S3 User Guide*

This action is not supported by Amazon S3 on Outposts.

By default, GET returns ACL information about the current version of an
object. To return ACL information about a different version, use the
versionId subresource.

If your bucket uses the bucket owner enforced setting for S3 Object
Ownership, requests to read ACLs are still supported and return the
`bucket-owner-full-control` ACL with the owner being the account that
created the bucket. For more information, see [Controlling object
ownership and disabling
ACLs](https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html)
in the *Amazon S3 User Guide*.

The following operations are related to `get_object_acl`:

-   `get_object`

-   `get_object_attributes`

-   `delete_object`

-   `put_object`

### Usage

    s3_get_object_acl(Bucket, Key, VersionId, RequestPayer,
      ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_get_object_acl_:_Bucket">Bucket</code></td>
<td><p>[required] The bucket name that contains the object for which to
get the ACL information.</p>
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
<td><code id="s3_get_object_acl_:_Key">Key</code></td>
<td><p>[required] The key of the object for which to get the ACL
information.</p></td>
</tr>
<tr class="odd">
<td><code id="s3_get_object_acl_:_VersionId">VersionId</code></td>
<td><p>VersionId used to reference a specific version of the
object.</p></td>
</tr>
<tr class="even">
<td><code id="s3_get_object_acl_:_RequestPayer">RequestPayer</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="s3_get_object_acl_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
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
      Owner = list(
        DisplayName = "string",
        ID = "string"
      ),
      Grants = list(
        list(
          Grantee = list(
            DisplayName = "string",
            EmailAddress = "string",
            ID = "string",
            Type = "CanonicalUser"|"AmazonCustomerByEmail"|"Group",
            URI = "string"
          ),
          Permission = "FULL_CONTROL"|"WRITE"|"WRITE_ACP"|"READ"|"READ_ACP"
        )
      ),
      RequestCharged = "requester"
    )

### Request syntax

    svc$get_object_acl(
      Bucket = "string",
      Key = "string",
      VersionId = "string",
      RequestPayer = "requester",
      ExpectedBucketOwner = "string"
    )

### Examples

    ## Not run: 
    # The following example retrieves access control list (ACL) of an object.
    svc$get_object_acl(
      Bucket = "examplebucket",
      Key = "HappyFace.jpg"
    )

    ## End(Not run)
