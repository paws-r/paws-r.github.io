<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_get_bucket_acl</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This implementation of the GET action uses the acl subresource to return the access control list (ACL) of a bucket

### Description

This implementation of the `GET` action uses the `acl` subresource to
return the access control list (ACL) of a bucket. To use `GET` to return
the ACL of the bucket, you must have `READ_ACP` access to the bucket. If
`READ_ACP` permission is granted to the anonymous user, you can return
the ACL of the bucket without using an authorization header.

To use this API operation against an access point, provide the alias of
the access point in place of the bucket name.

To use this API operation against an Object Lambda access point, provide
the alias of the Object Lambda access point in place of the bucket name.
If the Object Lambda access point alias in a request is not valid, the
error code `InvalidAccessPointAliasError` is returned. For more
information about `InvalidAccessPointAliasError`, see [List of Error
Codes](https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#ErrorCodeList).

If your bucket uses the bucket owner enforced setting for S3 Object
Ownership, requests to read ACLs are still supported and return the
`bucket-owner-full-control` ACL with the owner being the account that
created the bucket. For more information, see [Controlling object
ownership and disabling
ACLs](https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html)
in the *Amazon S3 User Guide*.

The following operations are related to `get_bucket_acl`:

-   `list_objects`

### Usage

    s3_get_bucket_acl(Bucket, ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_get_bucket_acl_:_Bucket">Bucket</code></td>
<td><p>[required] Specifies the S3 bucket whose ACL is being
requested.</p>
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
id="s3_get_bucket_acl_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
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
      )
    )

### Request syntax

    svc$get_bucket_acl(
      Bucket = "string",
      ExpectedBucketOwner = "string"
    )
