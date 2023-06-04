<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_delete_bucket_website</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This action removes the website configuration for a bucket

### Description

This action removes the website configuration for a bucket. Amazon S3
returns a `⁠200 OK⁠` response upon successfully deleting a website
configuration on the specified bucket. You will get a `⁠200 OK⁠` response
if the website configuration you are trying to delete does not exist on
the bucket. Amazon S3 returns a `404` response if the bucket specified
in the request does not exist.

This DELETE action requires the `S3:DeleteBucketWebsite` permission. By
default, only the bucket owner can delete the website configuration
attached to a bucket. However, bucket owners can grant other users
permission to delete the website configuration by writing a bucket
policy granting them the `S3:DeleteBucketWebsite` permission.

For more information about hosting websites, see [Hosting Websites on
Amazon
S3](https://docs.aws.amazon.com/AmazonS3/latest/userguide/WebsiteHosting.html).

The following operations are related to `delete_bucket_website`:

-   `get_bucket_website`

-   `put_bucket_website`

### Usage

    s3_delete_bucket_website(Bucket, ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_delete_bucket_website_:_Bucket">Bucket</code></td>
<td><p>[required] The bucket name for which you want to remove the
website configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_delete_bucket_website_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
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

    svc$delete_bucket_website(
      Bucket = "string",
      ExpectedBucketOwner = "string"
    )

### Examples

    ## Not run: 
    # The following example deletes bucket website configuration.
    svc$delete_bucket_website(
      Bucket = "examplebucket"
    )

    ## End(Not run)
