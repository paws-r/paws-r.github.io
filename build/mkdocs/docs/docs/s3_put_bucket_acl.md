<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_put_bucket_acl</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets the permissions on an existing bucket using access control lists (ACL)

### Description

Sets the permissions on an existing bucket using access control lists
(ACL). For more information, see [Using
ACLs](https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html).
To set the ACL of a bucket, you must have `WRITE_ACP` permission.

You can use one of the following two ways to set a bucket's permissions:

-   Specify the ACL in the request body

-   Specify permissions using request headers

You cannot specify access permission using both the body and the request
headers.

Depending on your application needs, you may choose to set the ACL on a
bucket using either the request body or the headers. For example, if you
have an existing application that updates a bucket ACL using the request
body, then you can continue to use that approach.

If your bucket uses the bucket owner enforced setting for S3 Object
Ownership, ACLs are disabled and no longer affect permissions. You must
use policies to grant access to your bucket and the objects in it.
Requests to set ACLs or update ACLs fail and return the
`AccessControlListNotSupported` error code. Requests to read ACLs are
still supported. For more information, see [Controlling object
ownership](https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html)
in the *Amazon S3 User Guide*.

#### Permissions

You can set access permissions using one of the following methods:

-   Specify a canned ACL with the `x-amz-acl` request header. Amazon S3
    supports a set of predefined ACLs, known as *canned ACLs*. Each
    canned ACL has a predefined set of grantees and permissions. Specify
    the canned ACL name as the value of `x-amz-acl`. If you use this
    header, you cannot use other access control-specific headers in your
    request. For more information, see [Canned
    ACL](https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html#CannedACL).

-   Specify access permissions explicitly with the `x-amz-grant-read`,
    `x-amz-grant-read-acp`, `x-amz-grant-write-acp`, and
    `x-amz-grant-full-control` headers. When using these headers, you
    specify explicit access permissions and grantees (Amazon Web
    Services accounts or Amazon S3 groups) who will receive the
    permission. If you use these ACL-specific headers, you cannot use
    the `x-amz-acl` header to set a canned ACL. These parameters map to
    the set of permissions that Amazon S3 supports in an ACL. For more
    information, see [Access Control List (ACL)
    Overview](https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html).

    You specify each grantee as a type=value pair, where the type is one
    of the following:

    -   `id` – if the value specified is the canonical user ID of an
        Amazon Web Services account

    -   `uri` – if you are granting permissions to a predefined group

    -   `emailAddress` – if the value specified is the email address of
        an Amazon Web Services account

        Using email addresses to specify a grantee is only supported in
        the following Amazon Web Services Regions:

        -   US East (N. Virginia)

        -   US West (N. California)

        -   US West (Oregon)

        -   Asia Pacific (Singapore)

        -   Asia Pacific (Sydney)

        -   Asia Pacific (Tokyo)

        -   Europe (Ireland)

        -   South America (São Paulo)

        For a list of all the Amazon S3 supported Regions and endpoints,
        see [Regions and
        Endpoints](https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region)
        in the Amazon Web Services General Reference.

    For example, the following `x-amz-grant-write` header grants create,
    overwrite, and delete objects permission to LogDelivery group
    predefined by Amazon S3 and two Amazon Web Services accounts
    identified by their email addresses.

    `⁠x-amz-grant-write: uri="http://acs.amazonaws.com/groups/s3/LogDelivery", id="111122223333", id="555566667777" ⁠`

You can use either a canned ACL or specify access permissions
explicitly. You cannot do both.

#### Grantee Values

You can specify the person (grantee) to whom you're assigning access
rights (using request elements) in the following ways:

-   By the person's ID:

    `⁠<Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CanonicalUser"><ID><>ID<></ID><DisplayName><>GranteesEmail<></DisplayName> </Grantee>⁠`

    DisplayName is optional and ignored in the request

-   By URI:

    `⁠<Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="Group"><URI><>http://acs.amazonaws.com/groups/global/AuthenticatedUsers<></URI></Grantee>⁠`

-   By Email address:

    `⁠<Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="AmazonCustomerByEmail"><EmailAddress><>Grantees@email.com<></EmailAddress>&</Grantee>⁠`

    The grantee is resolved to the CanonicalUser and, in a response to a
    GET Object acl request, appears as the CanonicalUser.

    Using email addresses to specify a grantee is only supported in the
    following Amazon Web Services Regions:

    -   US East (N. Virginia)

    -   US West (N. California)

    -   US West (Oregon)

    -   Asia Pacific (Singapore)

    -   Asia Pacific (Sydney)

    -   Asia Pacific (Tokyo)

    -   Europe (Ireland)

    -   South America (São Paulo)

    For a list of all the Amazon S3 supported Regions and endpoints, see
    [Regions and
    Endpoints](https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region)
    in the Amazon Web Services General Reference.

The following operations are related to `put_bucket_acl`:

-   `create_bucket`

-   `delete_bucket`

-   `get_object_acl`

### Usage

    s3_put_bucket_acl(ACL, AccessControlPolicy, Bucket, ContentMD5,
      ChecksumAlgorithm, GrantFullControl, GrantRead, GrantReadACP,
      GrantWrite, GrantWriteACP, ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_put_bucket_acl_:_ACL">ACL</code></td>
<td><p>The canned ACL to apply to the bucket.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_put_bucket_acl_:_AccessControlPolicy">AccessControlPolicy</code></td>
<td><p>Contains the elements that set the ACL permissions for an object
per grantee.</p></td>
</tr>
<tr class="odd">
<td><code id="s3_put_bucket_acl_:_Bucket">Bucket</code></td>
<td><p>[required] The bucket to which to apply the ACL.</p></td>
</tr>
<tr class="even">
<td><code id="s3_put_bucket_acl_:_ContentMD5">ContentMD5</code></td>
<td><p>The base64-encoded 128-bit MD5 digest of the data. This header
must be used as a message integrity check to verify that the request
body was not corrupted in transit. For more information, go to <a
href="https://www.ietf.org/rfc/rfc1864.txt">RFC 1864.</a></p>
<p>For requests made using the Amazon Web Services Command Line
Interface (CLI) or Amazon Web Services SDKs, this field is calculated
automatically.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_put_bucket_acl_:_ChecksumAlgorithm">ChecksumAlgorithm</code></td>
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
<code>ChecksumAlgorithm</code> parameter.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_put_bucket_acl_:_GrantFullControl">GrantFullControl</code></td>
<td><p>Allows grantee the read, write, read ACP, and write ACP
permissions on the bucket.</p></td>
</tr>
<tr class="odd">
<td><code id="s3_put_bucket_acl_:_GrantRead">GrantRead</code></td>
<td><p>Allows grantee to list the objects in the bucket.</p></td>
</tr>
<tr class="even">
<td><code id="s3_put_bucket_acl_:_GrantReadACP">GrantReadACP</code></td>
<td><p>Allows grantee to read the bucket ACL.</p></td>
</tr>
<tr class="odd">
<td><code id="s3_put_bucket_acl_:_GrantWrite">GrantWrite</code></td>
<td><p>Allows grantee to create new objects in the bucket.</p>
<p>For the bucket and object owners of existing objects, also allows
deletions and overwrites of those objects.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_put_bucket_acl_:_GrantWriteACP">GrantWriteACP</code></td>
<td><p>Allows grantee to write the ACL for the applicable
bucket.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_put_bucket_acl_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
<td><p>The account ID of the expected bucket owner. If the bucket is
owned by a different account, the request fails with the HTTP status
code <code style="white-space: pre;">⁠403 Forbidden⁠</code> (access
denied).</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_bucket_acl(
      ACL = "private"|"public-read"|"public-read-write"|"authenticated-read",
      AccessControlPolicy = list(
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
        Owner = list(
          DisplayName = "string",
          ID = "string"
        )
      ),
      Bucket = "string",
      ContentMD5 = "string",
      ChecksumAlgorithm = "CRC32"|"CRC32C"|"SHA1"|"SHA256",
      GrantFullControl = "string",
      GrantRead = "string",
      GrantReadACP = "string",
      GrantWrite = "string",
      GrantWriteACP = "string",
      ExpectedBucketOwner = "string"
    )

### Examples

    ## Not run: 
    # The following example replaces existing ACL on a bucket. The ACL grants
    # the bucket owner (specified using the owner ID) and write permission to
    # the LogDelivery group. Because this is a replace operation, you must
    # specify all the grants in your request. To incrementally add or remove
    # ACL grants, you might use the console.
    svc$put_bucket_acl(
      Bucket = "examplebucket",
      GrantFullControl = "id=examplee7a2f25102679df27bb0ae12b3f85be6f290b936c4393484",
      GrantWrite = "uri=http://acs.amazonaws.com/groups/s3/LogDelivery"
    )

    ## End(Not run)
