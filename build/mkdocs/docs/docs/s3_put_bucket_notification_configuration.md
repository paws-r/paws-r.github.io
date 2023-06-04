<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_put_bucket_notification_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enables notifications of specified events for a bucket

### Description

Enables notifications of specified events for a bucket. For more
information about event notifications, see [Configuring Event
Notifications](https://docs.aws.amazon.com/AmazonS3/latest/userguide/EventNotifications.html).

Using this API, you can replace an existing notification configuration.
The configuration is an XML file that defines the event types that you
want Amazon S3 to publish and the destination where you want Amazon S3
to publish an event notification when it detects an event of the
specified type.

By default, your bucket has no event notifications configured. That is,
the notification configuration will be an empty
`NotificationConfiguration`.

`⁠<NotificationConfiguration>⁠`

`⁠</NotificationConfiguration>⁠`

This action replaces the existing notification configuration with the
configuration you include in the request body.

After Amazon S3 receives this request, it first verifies that any Amazon
Simple Notification Service (Amazon SNS) or Amazon Simple Queue Service
(Amazon SQS) destination exists, and that the bucket owner has
permission to publish to it by sending a test notification. In the case
of Lambda destinations, Amazon S3 verifies that the Lambda function
permissions grant Amazon S3 permission to invoke the function from the
Amazon S3 bucket. For more information, see [Configuring Notifications
for Amazon S3
Events](https://docs.aws.amazon.com/AmazonS3/latest/userguide/EventNotifications.html).

You can disable notifications by adding the empty
NotificationConfiguration element.

For more information about the number of event notification
configurations that you can create per bucket, see [Amazon S3 service
quotas](https://docs.aws.amazon.com/general/latest/gr/s3.html#limits_s3)
in *Amazon Web Services General Reference*.

By default, only the bucket owner can configure notifications on a
bucket. However, bucket owners can use a bucket policy to grant
permission to other users to set this configuration with
`s3:PutBucketNotification` permission.

The PUT notification is an atomic operation. For example, suppose your
notification configuration includes SNS topic, SQS queue, and Lambda
function configurations. When you send a PUT request with this
configuration, Amazon S3 sends test messages to your SNS topic. If the
message fails, the entire PUT action will fail, and Amazon S3 will not
add the configuration to your bucket.

If the configuration in the request body includes only one
`TopicConfiguration` specifying only the
`s3:ReducedRedundancyLostObject` event type, the response will also
include the `x-amz-sns-test-message-id` header containing the message ID
of the test notification sent to the topic.

The following action is related to
`put_bucket_notification_configuration`:

-   `get_bucket_notification_configuration`

### Usage

    s3_put_bucket_notification_configuration(Bucket,
      NotificationConfiguration, ExpectedBucketOwner,
      SkipDestinationValidation)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="s3_put_bucket_notification_configuration_:_Bucket">Bucket</code></td>
<td><p>[required] The name of the bucket.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_put_bucket_notification_configuration_:_NotificationConfiguration">NotificationConfiguration</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_put_bucket_notification_configuration_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
<td><p>The account ID of the expected bucket owner. If the bucket is
owned by a different account, the request fails with the HTTP status
code <code style="white-space: pre;">⁠403 Forbidden⁠</code> (access
denied).</p></td>
</tr>
<tr class="even">
<td><code
id="s3_put_bucket_notification_configuration_:_SkipDestinationValidation">SkipDestinationValidation</code></td>
<td><p>Skips validation of Amazon SQS, Amazon SNS, and Lambda
destinations. True or false value.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_bucket_notification_configuration(
      Bucket = "string",
      NotificationConfiguration = list(
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
      ),
      ExpectedBucketOwner = "string",
      SkipDestinationValidation = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # The following example sets notification configuration on a bucket to
    # publish the object created events to an SNS topic.
    svc$put_bucket_notification_configuration(
      Bucket = "examplebucket",
      NotificationConfiguration = list(
        TopicConfigurations = list(
          list(
            Events = list(
              "s3:ObjectCreated:*"
            ),
            TopicArn = "arn:aws:sns:us-west-2:123456789012:s3-notification-topic"
          )
        )
      )
    )

    ## End(Not run)
