<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_get_bucket_website</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the website configuration for a bucket

### Description

Returns the website configuration for a bucket. To host website on
Amazon S3, you can configure a bucket as website by adding a website
configuration. For more information about hosting websites, see [Hosting
Websites on Amazon
S3](https://docs.aws.amazon.com/AmazonS3/latest/userguide/WebsiteHosting.html).

This GET action requires the `S3:GetBucketWebsite` permission. By
default, only the bucket owner can read the bucket website
configuration. However, bucket owners can allow other users to read the
website configuration by writing a bucket policy granting them the
`S3:GetBucketWebsite` permission.

The following operations are related to `get_bucket_website`:

-   `delete_bucket_website`

-   `put_bucket_website`

### Usage

    s3_get_bucket_website(Bucket, ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_get_bucket_website_:_Bucket">Bucket</code></td>
<td><p>[required] The bucket name for which to get the website
configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_get_bucket_website_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
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
      RedirectAllRequestsTo = list(
        HostName = "string",
        Protocol = "http"|"https"
      ),
      IndexDocument = list(
        Suffix = "string"
      ),
      ErrorDocument = list(
        Key = "string"
      ),
      RoutingRules = list(
        list(
          Condition = list(
            HttpErrorCodeReturnedEquals = "string",
            KeyPrefixEquals = "string"
          ),
          Redirect = list(
            HostName = "string",
            HttpRedirectCode = "string",
            Protocol = "http"|"https",
            ReplaceKeyPrefixWith = "string",
            ReplaceKeyWith = "string"
          )
        )
      )
    )

### Request syntax

    svc$get_bucket_website(
      Bucket = "string",
      ExpectedBucketOwner = "string"
    )

### Examples

    ## Not run: 
    # The following example retrieves website configuration of a bucket.
    svc$get_bucket_website(
      Bucket = "examplebucket"
    )

    ## End(Not run)
