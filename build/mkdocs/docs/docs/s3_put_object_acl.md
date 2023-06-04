<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_put_object_acl</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Uses the acl subresource to set the access control list (ACL) permissions for a new or existing object in an S3 bucket

### Description

Uses the `acl` subresource to set the access control list (ACL)
permissions for a new or existing object in an S3 bucket. You must have
`WRITE_ACP` permission to set the ACL of an object. For more
information, see [What permissions can I
grant?](https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html#permissions)
in the *Amazon S3 User Guide*.

This action is not supported by Amazon S3 on Outposts.

Depending on your application needs, you can choose to set the ACL on an
object using either the request body or the headers. For example, if you
have an existing application that updates a bucket ACL using the request
body, you can continue to use that approach. For more information, see
[Access Control List (ACL)
Overview](https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html)
in the *Amazon S3 User Guide*.

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
    supports a set of predefined ACLs, known as canned ACLs. Each canned
    ACL has a predefined set of grantees and permissions. Specify the
    canned ACL name as the value of `x-amz-ac`l. If you use this header,
    you cannot use other access control-specific headers in your
    request. For more information, see [Canned
    ACL](https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html#CannedACL).

-   Specify access permissions explicitly with the `x-amz-grant-read`,
    `x-amz-grant-read-acp`, `x-amz-grant-write-acp`, and
    `x-amz-grant-full-control` headers. When using these headers, you
    specify explicit access permissions and grantees (Amazon Web
    Services accounts or Amazon S3 groups) who will receive the
    permission. If you use these ACL-specific headers, you cannot use
    `x-amz-acl` header to set a canned ACL. These parameters map to the
    set of permissions that Amazon S3 supports in an ACL. For more
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

    For example, the following `x-amz-grant-read` header grants list
    objects permission to the two Amazon Web Services accounts
    identified by their email addresses.

    `⁠x-amz-grant-read: emailAddress="xyz@amazon.com", emailAddress="abc@amazon.com" ⁠`

You can use either a canned ACL or specify access permissions
explicitly. You cannot do both.

#### Grantee Values

You can specify the person (grantee) to whom you're assigning access
rights (using request elements) in the following ways:

-   By the person's ID:

    `⁠<Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CanonicalUser"><ID><>ID<></ID><DisplayName><>GranteesEmail<></DisplayName> </Grantee>⁠`

    DisplayName is optional and ignored in the request.

-   By URI:

    `⁠<Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="Group"><URI><>http://acs.amazonaws.com/groups/global/AuthenticatedUsers<></URI></Grantee>⁠`

-   By Email address:

    `⁠<Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="AmazonCustomerByEmail"><EmailAddress><>Grantees@email.com<></EmailAddress>lt;/Grantee>⁠`

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

#### Versioning

The ACL of an object is set at the object version level. By default, PUT
sets the ACL of the current version of an object. To set the ACL of a
different version, use the `versionId` subresource.

The following operations are related to `put_object_acl`:

-   `copy_object`

-   `get_object`

### Usage

    s3_put_object_acl(ACL, AccessControlPolicy, Bucket, ContentMD5,
      ChecksumAlgorithm, GrantFullControl, GrantRead, GrantReadACP,
      GrantWrite, GrantWriteACP, Key, RequestPayer, VersionId,
      ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_put_object_acl_:_ACL">ACL</code></td>
<td><p>The canned ACL to apply to the object. For more information, see
<a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html#CannedACL">Canned
ACL</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_put_object_acl_:_AccessControlPolicy">AccessControlPolicy</code></td>
<td><p>Contains the elements that set the ACL permissions for an object
per grantee.</p></td>
</tr>
<tr class="odd">
<td><code id="s3_put_object_acl_:_Bucket">Bucket</code></td>
<td><p>[required] The bucket name that contains the object to which you
want to attach the ACL.</p>
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
<td><code id="s3_put_object_acl_:_ContentMD5">ContentMD5</code></td>
<td><p>The base64-encoded 128-bit MD5 digest of the data. This header
must be used as a message integrity check to verify that the request
body was not corrupted in transit. For more information, go to <a
href="https://www.ietf.org/rfc/rfc1864.txt">RFC 1864.\&gt;</a></p>
<p>For requests made using the Amazon Web Services Command Line
Interface (CLI) or Amazon Web Services SDKs, this field is calculated
automatically.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_put_object_acl_:_ChecksumAlgorithm">ChecksumAlgorithm</code></td>
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
id="s3_put_object_acl_:_GrantFullControl">GrantFullControl</code></td>
<td><p>Allows grantee the read, write, read ACP, and write ACP
permissions on the bucket.</p>
<p>This action is not supported by Amazon S3 on Outposts.</p></td>
</tr>
<tr class="odd">
<td><code id="s3_put_object_acl_:_GrantRead">GrantRead</code></td>
<td><p>Allows grantee to list the objects in the bucket.</p>
<p>This action is not supported by Amazon S3 on Outposts.</p></td>
</tr>
<tr class="even">
<td><code id="s3_put_object_acl_:_GrantReadACP">GrantReadACP</code></td>
<td><p>Allows grantee to read the bucket ACL.</p>
<p>This action is not supported by Amazon S3 on Outposts.</p></td>
</tr>
<tr class="odd">
<td><code id="s3_put_object_acl_:_GrantWrite">GrantWrite</code></td>
<td><p>Allows grantee to create new objects in the bucket.</p>
<p>For the bucket and object owners of existing objects, also allows
deletions and overwrites of those objects.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_put_object_acl_:_GrantWriteACP">GrantWriteACP</code></td>
<td><p>Allows grantee to write the ACL for the applicable bucket.</p>
<p>This action is not supported by Amazon S3 on Outposts.</p></td>
</tr>
<tr class="odd">
<td><code id="s3_put_object_acl_:_Key">Key</code></td>
<td><p>[required] Key for which the PUT action was initiated.</p>
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
<td><code id="s3_put_object_acl_:_RequestPayer">RequestPayer</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code id="s3_put_object_acl_:_VersionId">VersionId</code></td>
<td><p>VersionId used to reference a specific version of the
object.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_put_object_acl_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
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
      RequestCharged = "requester"
    )

### Request syntax

    svc$put_object_acl(
      ACL = "private"|"public-read"|"public-read-write"|"authenticated-read"|"aws-exec-read"|"bucket-owner-read"|"bucket-owner-full-control",
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
      Key = "string",
      RequestPayer = "requester",
      VersionId = "string",
      ExpectedBucketOwner = "string"
    )

### Examples

    ## Not run: 
    # The following example adds grants to an object ACL. The first permission
    # grants user1 and user2 FULL_CONTROL and the AllUsers group READ
    # permission.
    svc$put_object_acl(
      AccessControlPolicy = structure(
        list(),
        names = character(
          0
        )
      ),
      Bucket = "examplebucket",
      GrantFullControl = "emailaddress=user1@example.com,emailaddress=user2@example.com",
      GrantRead = "uri=http://acs.amazonaws.com/groups/global/AllUsers",
      Key = "HappyFace.jpg"
    )

    ## End(Not run)
