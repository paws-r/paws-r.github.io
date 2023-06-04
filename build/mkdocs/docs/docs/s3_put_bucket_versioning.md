<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_put_bucket_versioning</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets the versioning state of an existing bucket

### Description

Sets the versioning state of an existing bucket.

You can set the versioning state with one of the following values:

**Enabled**—Enables versioning for the objects in the bucket. All
objects added to the bucket receive a unique version ID.

**Suspended**—Disables versioning for the objects in the bucket. All
objects added to the bucket receive the version ID null.

If the versioning state has never been set on a bucket, it has no
versioning state; a `get_bucket_versioning` request does not return a
versioning state value.

In order to enable MFA Delete, you must be the bucket owner. If you are
the bucket owner and want to enable MFA Delete in the bucket versioning
configuration, you must include the `⁠x-amz-mfa request⁠` header and the
`Status` and the `MfaDelete` request elements in a request to set the
versioning state of the bucket.

If you have an object expiration lifecycle configuration in your
non-versioned bucket and you want to maintain the same permanent delete
behavior when you enable versioning, you must add a noncurrent
expiration policy. The noncurrent expiration lifecycle configuration
will manage the deletes of the noncurrent object versions in the
version-enabled bucket. (A version-enabled bucket maintains one current
and zero or more noncurrent object versions.) For more information, see
[Lifecycle and
Versioning](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lifecycle-mgmt.html#lifecycle-and-other-bucket-config).

The following operations are related to `put_bucket_versioning`:

-   `create_bucket`

-   `delete_bucket`

-   `get_bucket_versioning`

### Usage

    s3_put_bucket_versioning(Bucket, ContentMD5, ChecksumAlgorithm, MFA,
      VersioningConfiguration, ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_put_bucket_versioning_:_Bucket">Bucket</code></td>
<td><p>[required] The bucket name.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_put_bucket_versioning_:_ContentMD5">ContentMD5</code></td>
<td><p>\&gt;The base64-encoded 128-bit MD5 digest of the data. You must
use this header as a message integrity check to verify that the request
body was not corrupted in transit. For more information, see <a
href="https://www.ietf.org/rfc/rfc1864.txt">RFC 1864</a>.</p>
<p>For requests made using the Amazon Web Services Command Line
Interface (CLI) or Amazon Web Services SDKs, this field is calculated
automatically.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_put_bucket_versioning_:_ChecksumAlgorithm">ChecksumAlgorithm</code></td>
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
<td><code id="s3_put_bucket_versioning_:_MFA">MFA</code></td>
<td><p>The concatenation of the authentication device's serial number, a
space, and the value that is displayed on your authentication
device.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_put_bucket_versioning_:_VersioningConfiguration">VersioningConfiguration</code></td>
<td><p>[required] Container for setting the versioning state.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_put_bucket_versioning_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
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

    svc$put_bucket_versioning(
      Bucket = "string",
      ContentMD5 = "string",
      ChecksumAlgorithm = "CRC32"|"CRC32C"|"SHA1"|"SHA256",
      MFA = "string",
      VersioningConfiguration = list(
        MFADelete = "Enabled"|"Disabled",
        Status = "Enabled"|"Suspended"
      ),
      ExpectedBucketOwner = "string"
    )

### Examples

    ## Not run: 
    # The following example sets versioning configuration on bucket. The
    # configuration enables versioning on the bucket.
    svc$put_bucket_versioning(
      Bucket = "examplebucket",
      VersioningConfiguration = list(
        MFADelete = "Disabled",
        Status = "Enabled"
      )
    )

    ## End(Not run)
