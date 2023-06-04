<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_get_bucket_notification_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the notification configuration of a bucket

### Description

Returns the notification configuration of a bucket.

If notifications are not enabled on the bucket, the action returns an
empty `NotificationConfiguration` element.

By default, you must be the bucket owner to read the notification
configuration of a bucket. However, the bucket owner can use a bucket
policy to grant permission to other users to read this configuration
with the `s3:GetBucketNotification` permission.

To use this API operation against an access point, provide the alias of
the access point in place of the bucket name.

To use this API operation against an Object Lambda access point, provide
the alias of the Object Lambda access point in place of the bucket name.
If the Object Lambda access point alias in a request is not valid, the
error code `InvalidAccessPointAliasError` is returned. For more
information about `InvalidAccessPointAliasError`, see [List of Error
Codes](https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#ErrorCodeList).

For more information about setting and reading the notification
configuration on a bucket, see [Setting Up Notification of Bucket
Events](https://docs.aws.amazon.com/AmazonS3/latest/userguide/EventNotifications.html).
For more information about bucket policies, see [Using Bucket
Policies](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-iam-policies.html).

The following action is related to `get_bucket_notification`:

-   `put_bucket_notification`

### Usage

    s3_get_bucket_notification_configuration(Bucket, ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="s3_get_bucket_notification_configuration_:_Bucket">Bucket</code></td>
<td><p>[required] The name of the bucket for which to get the
notification configuration.</p>
<p>To use this API operation against an access point, provide the alias
of the access point in place of the bucket name.</p>
<p>To use this API operation against an Object Lambda access point,
provide the alias of the Object Lambda access point in place of the
bucket name. If the Object Lambda access point alias in a request is not
valid, the error code <code>InvalidAccessPointAliasError</code> is
returned. For more information about
<code>InvalidAccessPointAliasError</code>, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#ErrorCodeList">List
of Error Codes</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_get_bucket_notification_configuration_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
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
      TopicConfigurations = list(
        list(
          Id = "string",
          TopicArn = "string",
          Events = list(
            "s3:ReducedRedundancyLostObject"|"s3:ObjectCreated:*"|"s3:ObjectCreated:Put"|"s3:ObjectCreated:Post"|"s3:ObjectCreated:Copy"|"s3:ObjectCreated:CompleteMultipartUpload"|"s3:ObjectRemoved:*"|"s3:ObjectRemoved:Delete"|"s3:ObjectRemoved:DeleteMarkerCreated"|"s3:ObjectRestore:*"|"s3:ObjectRestore:Post"|"s3:ObjectRestore:Completed"|"s3:Replication:*"|"s3:Replication:OperationFailedReplication"|"s3:Replication:OperationNotTracked"|"s3:Replication:OperationMissedThreshold"|"s3:Replication:OperationReplicatedAfterThreshold"|"s3:ObjectRestore:Delete"|"s3:LifecycleTransition"|"s3:IntelligentTiering"|"s3:ObjectAcl:Put"|"s3:LifecycleExpiration:*"|"s3:LifecycleExpiration:Delete"|"s3:LifecycleExpiration:DeleteMarkerCreated"|"s3:ObjectTagging:*"|"s3:ObjectTagging:Put"|"s3:ObjectTagging:Delete"
          ),
          Filter = list(
            Key = list(
              FilterRules = list(
                list(
                  Name = "prefix"|"suffix",
                  Value = "string"
                )
              )
            )
          )
        )
      ),
      QueueConfigurations = list(
        list(
          Id = "string",
          QueueArn = "string",
          Events = list(
            "s3:ReducedRedundancyLostObject"|"s3:ObjectCreated:*"|"s3:ObjectCreated:Put"|"s3:ObjectCreated:Post"|"s3:ObjectCreated:Copy"|"s3:ObjectCreated:CompleteMultipartUpload"|"s3:ObjectRemoved:*"|"s3:ObjectRemoved:Delete"|"s3:ObjectRemoved:DeleteMarkerCreated"|"s3:ObjectRestore:*"|"s3:ObjectRestore:Post"|"s3:ObjectRestore:Completed"|"s3:Replication:*"|"s3:Replication:OperationFailedReplication"|"s3:Replication:OperationNotTracked"|"s3:Replication:OperationMissedThreshold"|"s3:Replication:OperationReplicatedAfterThreshold"|"s3:ObjectRestore:Delete"|"s3:LifecycleTransition"|"s3:IntelligentTiering"|"s3:ObjectAcl:Put"|"s3:LifecycleExpiration:*"|"s3:LifecycleExpiration:Delete"|"s3:LifecycleExpiration:DeleteMarkerCreated"|"s3:ObjectTagging:*"|"s3:ObjectTagging:Put"|"s3:ObjectTagging:Delete"
          ),
          Filter = list(
            Key = list(
              FilterRules = list(
                list(
                  Name = "prefix"|"suffix",
                  Value = "string"
                )
              )
            )
          )
        )
      ),
      LambdaFunctionConfigurations = list(
        list(
          Id = "string",
          LambdaFunctionArn = "string",
          Events = list(
            "s3:ReducedRedundancyLostObject"|"s3:ObjectCreated:*"|"s3:ObjectCreated:Put"|"s3:ObjectCreated:Post"|"s3:ObjectCreated:Copy"|"s3:ObjectCreated:CompleteMultipartUpload"|"s3:ObjectRemoved:*"|"s3:ObjectRemoved:Delete"|"s3:ObjectRemoved:DeleteMarkerCreated"|"s3:ObjectRestore:*"|"s3:ObjectRestore:Post"|"s3:ObjectRestore:Completed"|"s3:Replication:*"|"s3:Replication:OperationFailedReplication"|"s3:Replication:OperationNotTracked"|"s3:Replication:OperationMissedThreshold"|"s3:Replication:OperationReplicatedAfterThreshold"|"s3:ObjectRestore:Delete"|"s3:LifecycleTransition"|"s3:IntelligentTiering"|"s3:ObjectAcl:Put"|"s3:LifecycleExpiration:*"|"s3:LifecycleExpiration:Delete"|"s3:LifecycleExpiration:DeleteMarkerCreated"|"s3:ObjectTagging:*"|"s3:ObjectTagging:Put"|"s3:ObjectTagging:Delete"
          ),
          Filter = list(
            Key = list(
              FilterRules = list(
                list(
                  Name = "prefix"|"suffix",
                  Value = "string"
                )
              )
            )
          )
        )
      ),
      EventBridgeConfiguration = list()
    )

### Request syntax

    svc$get_bucket_notification_configuration(
      Bucket = "string",
      ExpectedBucketOwner = "string"
    )
