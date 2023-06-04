<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_get_bucket_replication</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the replication configuration of a bucket

### Description

Returns the replication configuration of a bucket.

It can take a while to propagate the put or delete a replication
configuration to all Amazon S3 systems. Therefore, a get request soon
after put or delete can return a wrong result.

For information about replication configuration, see
[Replication](https://docs.aws.amazon.com/AmazonS3/latest/userguide/replication.html)
in the *Amazon S3 User Guide*.

This action requires permissions for the
`s3:GetReplicationConfiguration` action. For more information about
permissions, see [Using Bucket Policies and User
Policies](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-iam-policies.html).

If you include the `Filter` element in a replication configuration, you
must also include the `DeleteMarkerReplication` and `Priority` elements.
The response also returns those elements.

For information about `get_bucket_replication` errors, see [List of
replication-related error
codes](https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#ReplicationErrorCodeList)

The following operations are related to `get_bucket_replication`:

-   `put_bucket_replication`

-   `delete_bucket_replication`

### Usage

    s3_get_bucket_replication(Bucket, ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_get_bucket_replication_:_Bucket">Bucket</code></td>
<td><p>[required] The bucket name for which to get the replication
information.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_get_bucket_replication_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
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
      ReplicationConfiguration = list(
        Role = "string",
        Rules = list(
          list(
            ID = "string",
            Priority = 123,
            Prefix = "string",
            Filter = list(
              Prefix = "string",
              Tag = list(
                Key = "string",
                Value = "string"
              ),
              And = list(
                Prefix = "string",
                Tags = list(
                  list(
                    Key = "string",
                    Value = "string"
                  )
                )
              )
            ),
            Status = "Enabled"|"Disabled",
            SourceSelectionCriteria = list(
              SseKmsEncryptedObjects = list(
                Status = "Enabled"|"Disabled"
              ),
              ReplicaModifications = list(
                Status = "Enabled"|"Disabled"
              )
            ),
            ExistingObjectReplication = list(
              Status = "Enabled"|"Disabled"
            ),
            Destination = list(
              Bucket = "string",
              Account = "string",
              StorageClass = "STANDARD"|"REDUCED_REDUNDANCY"|"STANDARD_IA"|"ONEZONE_IA"|"INTELLIGENT_TIERING"|"GLACIER"|"DEEP_ARCHIVE"|"OUTPOSTS"|"GLACIER_IR"|"SNOW",
              AccessControlTranslation = list(
                Owner = "Destination"
              ),
              EncryptionConfiguration = list(
                ReplicaKmsKeyID = "string"
              ),
              ReplicationTime = list(
                Status = "Enabled"|"Disabled",
                Time = list(
                  Minutes = 123
                )
              ),
              Metrics = list(
                Status = "Enabled"|"Disabled",
                EventThreshold = list(
                  Minutes = 123
                )
              )
            ),
            DeleteMarkerReplication = list(
              Status = "Enabled"|"Disabled"
            )
          )
        )
      )
    )

### Request syntax

    svc$get_bucket_replication(
      Bucket = "string",
      ExpectedBucketOwner = "string"
    )

### Examples

    ## Not run: 
    # The following example returns replication configuration set on a bucket.
    svc$get_bucket_replication(
      Bucket = "examplebucket"
    )

    ## End(Not run)
