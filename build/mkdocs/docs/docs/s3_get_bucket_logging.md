<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_get_bucket_logging</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the logging status of a bucket and the permissions users have to view and modify that status

### Description

Returns the logging status of a bucket and the permissions users have to
view and modify that status.

The following operations are related to `get_bucket_logging`:

-   `create_bucket`

-   `put_bucket_logging`

### Usage

    s3_get_bucket_logging(Bucket, ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_get_bucket_logging_:_Bucket">Bucket</code></td>
<td><p>[required] The bucket name for which to get the logging
information.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_get_bucket_logging_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
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
    )

### Request syntax

    svc$get_bucket_logging(
      Bucket = "string",
      ExpectedBucketOwner = "string"
    )
