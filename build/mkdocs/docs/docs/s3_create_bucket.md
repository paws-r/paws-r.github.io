<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_create_bucket</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new S3 bucket

### Description

Creates a new S3 bucket. To create a bucket, you must register with
Amazon S3 and have a valid Amazon Web Services Access Key ID to
authenticate requests. Anonymous requests are never allowed to create
buckets. By creating the bucket, you become the bucket owner.

Not every string is an acceptable bucket name. For information about
bucket naming restrictions, see [Bucket naming
rules](https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html).

If you want to create an Amazon S3 on Outposts bucket, see [Create
Bucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateBucket.html).

By default, the bucket is created in the US East (N. Virginia) Region.
You can optionally specify a Region in the request body. You might
choose a Region to optimize latency, minimize costs, or address
regulatory requirements. For example, if you reside in Europe, you will
probably find it advantageous to create buckets in the Europe (Ireland)
Region. For more information, see [Accessing a
bucket](https://docs.aws.amazon.com/AmazonS3/latest/userguide/UsingBucket.html#access-bucket-intro).

If you send your create bucket request to the `s3.amazonaws.com`
endpoint, the request goes to the us-east-1 Region. Accordingly, the
signature calculations in Signature Version 4 must use us-east-1 as the
Region, even if the location constraint in the request specifies another
Region where the bucket is to be created. If you create a bucket in a
Region other than US East (N. Virginia), your application must be able
to handle 307 redirect. For more information, see [Virtual hosting of
buckets](https://docs.aws.amazon.com/AmazonS3/latest/userguide/VirtualHosting.html).

#### Access control lists (ACLs)

When creating a bucket using this operation, you can optionally
configure the bucket ACL to specify the accounts or groups that should
be granted specific permissions on the bucket.

If your CreateBucket request sets bucket owner enforced for S3 Object
Ownership and specifies a bucket ACL that provides access to an external
Amazon Web Services account, your request fails with a `400` error and
returns the `InvalidBucketAclWithObjectOwnership` error code. For more
information, see [Controlling object
ownership](https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html)
in the *Amazon S3 User Guide*.

There are two ways to grant the appropriate permissions using the
request headers.

-   Specify a canned ACL using the `x-amz-acl` request header. Amazon S3
    supports a set of predefined ACLs, known as *canned ACLs*. Each
    canned ACL has a predefined set of grantees and permissions. For
    more information, see [Canned
    ACL](https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html#CannedACL).

-   Specify access permissions explicitly using the `x-amz-grant-read`,
    `x-amz-grant-write`, `x-amz-grant-read-acp`,
    `x-amz-grant-write-acp`, and `x-amz-grant-full-control` headers.
    These headers map to the set of permissions Amazon S3 supports in an
    ACL. For more information, see [Access control list (ACL)
    overview](https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html).

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

    For example, the following `x-amz-grant-read` header grants the
    Amazon Web Services accounts identified by account IDs permissions
    to read object data and its metadata:

    `⁠x-amz-grant-read: id="11112222333", id="444455556666" ⁠`

You can use either a canned ACL or specify access permissions
explicitly. You cannot do both.

#### Permissions

In addition to `s3:CreateBucket`, the following permissions are required
when your CreateBucket includes specific headers:

-   **ACLs** - If your `create_bucket` request specifies ACL permissions
    and the ACL is public-read, public-read-write, authenticated-read,
    or if you specify access permissions explicitly through any other
    ACL, both `s3:CreateBucket` and `s3:PutBucketAcl` permissions are
    needed. If the ACL the `create_bucket` request is private or doesn't
    specify any ACLs, only `s3:CreateBucket` permission is needed.

-   **Object Lock** - If `ObjectLockEnabledForBucket` is set to true in
    your `create_bucket` request, `s3:PutBucketObjectLockConfiguration`
    and `s3:PutBucketVersioning` permissions are required.

-   **S3 Object Ownership** - If your CreateBucket request includes the
    `x-amz-object-ownership` header, `s3:PutBucketOwnershipControls`
    permission is required.

The following operations are related to `create_bucket`:

-   `put_object`

-   `delete_bucket`

### Usage

    s3_create_bucket(ACL, Bucket, CreateBucketConfiguration,
      GrantFullControl, GrantRead, GrantReadACP, GrantWrite, GrantWriteACP,
      ObjectLockEnabledForBucket, ObjectOwnership)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_create_bucket_:_ACL">ACL</code></td>
<td><p>The canned ACL to apply to the bucket.</p></td>
</tr>
<tr class="even">
<td><code id="s3_create_bucket_:_Bucket">Bucket</code></td>
<td><p>[required] The name of the bucket to create.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_create_bucket_:_CreateBucketConfiguration">CreateBucketConfiguration</code></td>
<td><p>The configuration information for the bucket.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_create_bucket_:_GrantFullControl">GrantFullControl</code></td>
<td><p>Allows grantee the read, write, read ACP, and write ACP
permissions on the bucket.</p></td>
</tr>
<tr class="odd">
<td><code id="s3_create_bucket_:_GrantRead">GrantRead</code></td>
<td><p>Allows grantee to list the objects in the bucket.</p></td>
</tr>
<tr class="even">
<td><code id="s3_create_bucket_:_GrantReadACP">GrantReadACP</code></td>
<td><p>Allows grantee to read the bucket ACL.</p></td>
</tr>
<tr class="odd">
<td><code id="s3_create_bucket_:_GrantWrite">GrantWrite</code></td>
<td><p>Allows grantee to create new objects in the bucket.</p>
<p>For the bucket and object owners of existing objects, also allows
deletions and overwrites of those objects.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_create_bucket_:_GrantWriteACP">GrantWriteACP</code></td>
<td><p>Allows grantee to write the ACL for the applicable
bucket.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_create_bucket_:_ObjectLockEnabledForBucket">ObjectLockEnabledForBucket</code></td>
<td><p>Specifies whether you want S3 Object Lock to be enabled for the
new bucket.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_create_bucket_:_ObjectOwnership">ObjectOwnership</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Location = "string"
    )

### Request syntax

    svc$create_bucket(
      ACL = "private"|"public-read"|"public-read-write"|"authenticated-read",
      Bucket = "string",
      CreateBucketConfiguration = list(
        LocationConstraint = "af-south-1"|"ap-east-1"|"ap-northeast-1"|"ap-northeast-2"|"ap-northeast-3"|"ap-south-1"|"ap-southeast-1"|"ap-southeast-2"|"ap-southeast-3"|"ca-central-1"|"cn-north-1"|"cn-northwest-1"|"EU"|"eu-central-1"|"eu-north-1"|"eu-south-1"|"eu-west-1"|"eu-west-2"|"eu-west-3"|"me-south-1"|"sa-east-1"|"us-east-2"|"us-gov-east-1"|"us-gov-west-1"|"us-west-1"|"us-west-2"
      ),
      GrantFullControl = "string",
      GrantRead = "string",
      GrantReadACP = "string",
      GrantWrite = "string",
      GrantWriteACP = "string",
      ObjectLockEnabledForBucket = TRUE|FALSE,
      ObjectOwnership = "BucketOwnerPreferred"|"ObjectWriter"|"BucketOwnerEnforced"
    )

### Examples

    ## Not run: 
    # The following example creates a bucket.
    svc$create_bucket(
      Bucket = "examplebucket"
    )

    # The following example creates a bucket. The request specifies an AWS
    # region where to create the bucket.
    svc$create_bucket(
      Bucket = "examplebucket",
      CreateBucketConfiguration = list(
        LocationConstraint = "eu-west-1"
      )
    )

    ## End(Not run)
