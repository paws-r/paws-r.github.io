<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3control_put_bucket_versioning</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation sets the versioning state for S3 on Outposts buckets only

### Description

This operation sets the versioning state for S3 on Outposts buckets
only. To set the versioning state for an S3 bucket, see
`put_bucket_versioning` in the *Amazon S3 API Reference*.

Sets the versioning state for an S3 on Outposts bucket. With S3
Versioning, you can save multiple distinct copies of your objects and
recover from unintended user actions and application failures.

You can set the versioning state to one of the following:

-   **Enabled** - Enables versioning for the objects in the bucket. All
    objects added to the bucket receive a unique version ID.

-   **Suspended** - Suspends versioning for the objects in the bucket.
    All objects added to the bucket receive the version ID `null`.

If you've never set versioning on your bucket, it has no versioning
state. In that case, a
[GetBucketVersioning](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketVersioning.html)
request does not return a versioning state value.

When you enable S3 Versioning, for each object in your bucket, you have
a current version and zero or more noncurrent versions. You can
configure your bucket S3 Lifecycle rules to expire noncurrent versions
after a specified time period. For more information, see [Creating and
managing a lifecycle configuration for your S3 on Outposts
bucket](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsLifecycleManaging.html)
in the *Amazon S3 User Guide*.

If you have an object expiration lifecycle configuration in your
non-versioned bucket and you want to maintain the same permanent delete
behavior when you enable versioning, you must add a noncurrent
expiration policy. The noncurrent expiration lifecycle configuration
will manage the deletes of the noncurrent object versions in the
version-enabled bucket. For more information, see
[Versioning](https://docs.aws.amazon.com/AmazonS3/latest/userguide/Versioning.html)
in the *Amazon S3 User Guide*.

All Amazon S3 on Outposts REST API requests for this action require an
additional parameter of `x-amz-outpost-id` to be passed with the
request. In addition, you must use an S3 on Outposts endpoint hostname
prefix instead of `s3-control`. For an example of the request syntax for
Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname
prefix and the `x-amz-outpost-id` derived by using the access point ARN,
see the
[Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketVersioning.html#API_control_PutBucketVersioning_Examples)
section.

The following operations are related to `put_bucket_versioning` for S3
on Outposts.

-   `get_bucket_versioning`

-   `put_bucket_lifecycle_configuration`

-   `get_bucket_lifecycle_configuration`

### Usage

    s3control_put_bucket_versioning(AccountId, Bucket, MFA,
      VersioningConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="s3control_put_bucket_versioning_:_AccountId">AccountId</code></td>
<td><p>[required] The Amazon Web Services account ID of the S3 on
Outposts bucket.</p></td>
</tr>
<tr class="even">
<td><code
id="s3control_put_bucket_versioning_:_Bucket">Bucket</code></td>
<td><p>[required] The S3 on Outposts bucket to set the versioning state
for.</p></td>
</tr>
<tr class="odd">
<td><code id="s3control_put_bucket_versioning_:_MFA">MFA</code></td>
<td><p>The concatenation of the authentication device's serial number, a
space, and the value that is displayed on your authentication
device.</p></td>
</tr>
<tr class="even">
<td><code
id="s3control_put_bucket_versioning_:_VersioningConfiguration">VersioningConfiguration</code></td>
<td><p>[required] The root-level tag for the
<code>VersioningConfiguration</code> parameters.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_bucket_versioning(
      AccountId = "string",
      Bucket = "string",
      MFA = "string",
      VersioningConfiguration = list(
        MFADelete = "Enabled"|"Disabled",
        Status = "Enabled"|"Suspended"
      )
    )
