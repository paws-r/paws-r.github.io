<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_put_bucket_logging</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Set the logging parameters for a bucket and to specify permissions for who can view and modify the logging parameters

### Description

Set the logging parameters for a bucket and to specify permissions for
who can view and modify the logging parameters. All logs are saved to
buckets in the same Amazon Web Services Region as the source bucket. To
set the logging status of a bucket, you must be the bucket owner.

The bucket owner is automatically granted FULL\_CONTROL to all logs. You
use the `Grantee` request element to grant access to other people. The
`Permissions` request element specifies the kind of access the grantee
has to the logs.

If the target bucket for log delivery uses the bucket owner enforced
setting for S3 Object Ownership, you can't use the `Grantee` request
element to grant access to others. Permissions can only be granted using
policies. For more information, see [Permissions for server access log
delivery](https://docs.aws.amazon.com/AmazonS3/latest/userguide/enable-server-access-logging.html#grant-log-delivery-permissions-general)
in the *Amazon S3 User Guide*.

#### Grantee Values

You can specify the person (grantee) to whom you're assigning access
rights (using request elements) in the following ways:

-   By the person's ID:

    `⁠<Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CanonicalUser"><ID><>ID<></ID><DisplayName><>GranteesEmail<></DisplayName> </Grantee>⁠`

    DisplayName is optional and ignored in the request.

-   By Email address:

    `⁠ <Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="AmazonCustomerByEmail"><EmailAddress><>Grantees@email.com<></EmailAddress></Grantee>⁠`

    The grantee is resolved to the CanonicalUser and, in a response to a
    GET Object acl request, appears as the CanonicalUser.

-   By URI:

    `⁠<Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="Group"><URI><>http://acs.amazonaws.com/groups/global/AuthenticatedUsers<></URI></Grantee>⁠`

To enable logging, you use LoggingEnabled and its children request
elements. To disable logging, you use an empty BucketLoggingStatus
request element:

`⁠<BucketLoggingStatus xmlns="http://doc.s3.amazonaws.com/2006-03-01" />⁠`

For more information about server access logging, see [Server Access
Logging](https://docs.aws.amazon.com/AmazonS3/latest/userguide/ServerLogs.html)
in the *Amazon S3 User Guide*.

For more information about creating a bucket, see `create_bucket`. For
more information about returning the logging status of a bucket, see
`get_bucket_logging`.

The following operations are related to `put_bucket_logging`:

-   `put_object`

-   `delete_bucket`

-   `create_bucket`

-   `get_bucket_logging`

### Usage

    s3_put_bucket_logging(Bucket, BucketLoggingStatus, ContentMD5,
      ChecksumAlgorithm, ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_put_bucket_logging_:_Bucket">Bucket</code></td>
<td><p>[required] The name of the bucket for which to set the logging
parameters.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_put_bucket_logging_:_BucketLoggingStatus">BucketLoggingStatus</code></td>
<td><p>[required] Container for logging status information.</p></td>
</tr>
<tr class="odd">
<td><code id="s3_put_bucket_logging_:_ContentMD5">ContentMD5</code></td>
<td><p>The MD5 hash of the <code>put_bucket_logging</code> request
body.</p>
<p>For requests made using the Amazon Web Services Command Line
Interface (CLI) or Amazon Web Services SDKs, this field is calculated
automatically.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_put_bucket_logging_:_ChecksumAlgorithm">ChecksumAlgorithm</code></td>
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
<tr class="odd">
<td><code
id="s3_put_bucket_logging_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
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

    svc$put_bucket_logging(
      Bucket = "string",
      BucketLoggingStatus = list(
        LoggingEnabled = list(
          TargetBucket = "string",
          TargetGrants = list(
            list(
              Grantee = list(
                DisplayName = "string",
                EmailAddress = "string",
                ID = "string",
                Type = "CanonicalUser"|"AmazonCustomerByEmail"|"Group",
                URI = "string"
              ),
              Permission = "FULL_CONTROL"|"READ"|"WRITE"
            )
          ),
          TargetPrefix = "string"
        )
      ),
      ContentMD5 = "string",
      ChecksumAlgorithm = "CRC32"|"CRC32C"|"SHA1"|"SHA256",
      ExpectedBucketOwner = "string"
    )

### Examples

    ## Not run: 
    # The following example sets logging policy on a bucket. For the Log
    # Delivery group to deliver logs to the destination bucket, it needs
    # permission for the READ_ACP action which the policy grants.
    svc$put_bucket_logging(
      Bucket = "sourcebucket",
      BucketLoggingStatus = list(
        LoggingEnabled = list(
          TargetBucket = "targetbucket",
          TargetGrants = list(
            list(
              Grantee = list(
                Type = "Group",
                URI = "http://acs.amazonaws.com/groups/global/AllUsers"
              ),
              Permission = "READ"
            )
          ),
          TargetPrefix = "MyBucketLogs/"
        )
      )
    )

    ## End(Not run)
