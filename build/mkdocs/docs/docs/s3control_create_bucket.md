<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3control_create_bucket</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This action creates an Amazon S3 on Outposts bucket

### Description

This action creates an Amazon S3 on Outposts bucket. To create an S3
bucket, see [Create
Bucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html)
in the *Amazon S3 API Reference*.

Creates a new Outposts bucket. By creating the bucket, you become the
bucket owner. To create an Outposts bucket, you must have S3 on
Outposts. For more information, see [Using Amazon S3 on
Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html)
in *Amazon S3 User Guide*.

Not every string is an acceptable bucket name. For information on bucket
naming restrictions, see [Working with Amazon S3
Buckets](https://docs.aws.amazon.com/AmazonS3/latest/userguide/BucketRestrictions.html#bucketnamingrules).

S3 on Outposts buckets support:

-   Tags

-   LifecycleConfigurations for deleting expired objects

For a complete list of restrictions and Amazon S3 feature limitations on
S3 on Outposts, see [Amazon S3 on Outposts Restrictions and
Limitations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OnOutpostsRestrictionsLimitations.html).

For an example of the request syntax for Amazon S3 on Outposts that uses
the S3 on Outposts endpoint hostname prefix and `x-amz-outpost-id` in
your API request, see the
[Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateBucket.html#API_control_CreateBucket_Examples)
section.

The following actions are related to `create_bucket` for Amazon S3 on
Outposts:

-   [PutObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html)

-   `get_bucket`

-   `delete_bucket`

-   `create_access_point`

-   `put_access_point_policy`

### Usage

    s3control_create_bucket(ACL, Bucket, CreateBucketConfiguration,
      GrantFullControl, GrantRead, GrantReadACP, GrantWrite, GrantWriteACP,
      ObjectLockEnabledForBucket, OutpostId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3control_create_bucket_:_ACL">ACL</code></td>
<td><p>The canned ACL to apply to the bucket.</p>
<p>This is not supported by Amazon S3 on Outposts buckets.</p></td>
</tr>
<tr class="even">
<td><code id="s3control_create_bucket_:_Bucket">Bucket</code></td>
<td><p>[required] The name of the bucket.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3control_create_bucket_:_CreateBucketConfiguration">CreateBucketConfiguration</code></td>
<td><p>The configuration information for the bucket.</p>
<p>This is not supported by Amazon S3 on Outposts buckets.</p></td>
</tr>
<tr class="even">
<td><code
id="s3control_create_bucket_:_GrantFullControl">GrantFullControl</code></td>
<td><p>Allows grantee the read, write, read ACP, and write ACP
permissions on the bucket.</p>
<p>This is not supported by Amazon S3 on Outposts buckets.</p></td>
</tr>
<tr class="odd">
<td><code id="s3control_create_bucket_:_GrantRead">GrantRead</code></td>
<td><p>Allows grantee to list the objects in the bucket.</p>
<p>This is not supported by Amazon S3 on Outposts buckets.</p></td>
</tr>
<tr class="even">
<td><code
id="s3control_create_bucket_:_GrantReadACP">GrantReadACP</code></td>
<td><p>Allows grantee to read the bucket ACL.</p>
<p>This is not supported by Amazon S3 on Outposts buckets.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3control_create_bucket_:_GrantWrite">GrantWrite</code></td>
<td><p>Allows grantee to create, overwrite, and delete any object in the
bucket.</p>
<p>This is not supported by Amazon S3 on Outposts buckets.</p></td>
</tr>
<tr class="even">
<td><code
id="s3control_create_bucket_:_GrantWriteACP">GrantWriteACP</code></td>
<td><p>Allows grantee to write the ACL for the applicable bucket.</p>
<p>This is not supported by Amazon S3 on Outposts buckets.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3control_create_bucket_:_ObjectLockEnabledForBucket">ObjectLockEnabledForBucket</code></td>
<td><p>Specifies whether you want S3 Object Lock to be enabled for the
new bucket.</p>
<p>This is not supported by Amazon S3 on Outposts buckets.</p></td>
</tr>
<tr class="even">
<td><code id="s3control_create_bucket_:_OutpostId">OutpostId</code></td>
<td><p>The ID of the Outposts where the bucket is being created.</p>
<p>This ID is required by Amazon S3 on Outposts buckets.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Location = "string",
      BucketArn = "string"
    )

### Request syntax

    svc$create_bucket(
      ACL = "private"|"public-read"|"public-read-write"|"authenticated-read",
      Bucket = "string",
      CreateBucketConfiguration = list(
        LocationConstraint = "EU"|"eu-west-1"|"us-west-1"|"us-west-2"|"ap-south-1"|"ap-southeast-1"|"ap-southeast-2"|"ap-northeast-1"|"sa-east-1"|"cn-north-1"|"eu-central-1"
      ),
      GrantFullControl = "string",
      GrantRead = "string",
      GrantReadACP = "string",
      GrantWrite = "string",
      GrantWriteACP = "string",
      ObjectLockEnabledForBucket = TRUE|FALSE,
      OutpostId = "string"
    )
