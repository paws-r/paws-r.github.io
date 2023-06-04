<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_put_bucket_notification</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## No longer used, see the PutBucketNotificationConfiguration operation

### Description

No longer used, see the `put_bucket_notification_configuration`
operation.

### Usage

    s3_put_bucket_notification(Bucket, ContentMD5, ChecksumAlgorithm,
      NotificationConfiguration, ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_put_bucket_notification_:_Bucket">Bucket</code></td>
<td><p>[required] The name of the bucket.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_put_bucket_notification_:_ContentMD5">ContentMD5</code></td>
<td><p>The MD5 hash of the <code>put_public_access_block</code> request
body.</p>
<p>For requests made using the Amazon Web Services Command Line
Interface (CLI) or Amazon Web Services SDKs, this field is calculated
automatically.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_put_bucket_notification_:_ChecksumAlgorithm">ChecksumAlgorithm</code></td>
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
<td><code
id="s3_put_bucket_notification_:_NotificationConfiguration">NotificationConfiguration</code></td>
<td><p>[required] The container for the configuration.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_put_bucket_notification_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
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

    svc$put_bucket_notification(
      Bucket = "string",
      ContentMD5 = "string",
      ChecksumAlgorithm = "CRC32"|"CRC32C"|"SHA1"|"SHA256",
      NotificationConfiguration = list(
        TopicConfiguration = list(
          Id = "string",
          Events = list(
            "s3:ReducedRedundancyLostObject"|"s3:ObjectCreated:*"|"s3:ObjectCreated:Put"|"s3:ObjectCreated:Post"|"s3:ObjectCreated:Copy"|"s3:ObjectCreated:CompleteMultipartUpload"|"s3:ObjectRemoved:*"|"s3:ObjectRemoved:Delete"|"s3:ObjectRemoved:DeleteMarkerCreated"|"s3:ObjectRestore:*"|"s3:ObjectRestore:Post"|"s3:ObjectRestore:Completed"|"s3:Replication:*"|"s3:Replication:OperationFailedReplication"|"s3:Replication:OperationNotTracked"|"s3:Replication:OperationMissedThreshold"|"s3:Replication:OperationReplicatedAfterThreshold"|"s3:ObjectRestore:Delete"|"s3:LifecycleTransition"|"s3:IntelligentTiering"|"s3:ObjectAcl:Put"|"s3:LifecycleExpiration:*"|"s3:LifecycleExpiration:Delete"|"s3:LifecycleExpiration:DeleteMarkerCreated"|"s3:ObjectTagging:*"|"s3:ObjectTagging:Put"|"s3:ObjectTagging:Delete"
          ),
          Event = "s3:ReducedRedundancyLostObject"|"s3:ObjectCreated:*"|"s3:ObjectCreated:Put"|"s3:ObjectCreated:Post"|"s3:ObjectCreated:Copy"|"s3:ObjectCreated:CompleteMultipartUpload"|"s3:ObjectRemoved:*"|"s3:ObjectRemoved:Delete"|"s3:ObjectRemoved:DeleteMarkerCreated"|"s3:ObjectRestore:*"|"s3:ObjectRestore:Post"|"s3:ObjectRestore:Completed"|"s3:Replication:*"|"s3:Replication:OperationFailedReplication"|"s3:Replication:OperationNotTracked"|"s3:Replication:OperationMissedThreshold"|"s3:Replication:OperationReplicatedAfterThreshold"|"s3:ObjectRestore:Delete"|"s3:LifecycleTransition"|"s3:IntelligentTiering"|"s3:ObjectAcl:Put"|"s3:LifecycleExpiration:*"|"s3:LifecycleExpiration:Delete"|"s3:LifecycleExpiration:DeleteMarkerCreated"|"s3:ObjectTagging:*"|"s3:ObjectTagging:Put"|"s3:ObjectTagging:Delete",
          Topic = "string"
        ),
        QueueConfiguration = list(
          Id = "string",
          Event = "s3:ReducedRedundancyLostObject"|"s3:ObjectCreated:*"|"s3:ObjectCreated:Put"|"s3:ObjectCreated:Post"|"s3:ObjectCreated:Copy"|"s3:ObjectCreated:CompleteMultipartUpload"|"s3:ObjectRemoved:*"|"s3:ObjectRemoved:Delete"|"s3:ObjectRemoved:DeleteMarkerCreated"|"s3:ObjectRestore:*"|"s3:ObjectRestore:Post"|"s3:ObjectRestore:Completed"|"s3:Replication:*"|"s3:Replication:OperationFailedReplication"|"s3:Replication:OperationNotTracked"|"s3:Replication:OperationMissedThreshold"|"s3:Replication:OperationReplicatedAfterThreshold"|"s3:ObjectRestore:Delete"|"s3:LifecycleTransition"|"s3:IntelligentTiering"|"s3:ObjectAcl:Put"|"s3:LifecycleExpiration:*"|"s3:LifecycleExpiration:Delete"|"s3:LifecycleExpiration:DeleteMarkerCreated"|"s3:ObjectTagging:*"|"s3:ObjectTagging:Put"|"s3:ObjectTagging:Delete",
          Events = list(
            "s3:ReducedRedundancyLostObject"|"s3:ObjectCreated:*"|"s3:ObjectCreated:Put"|"s3:ObjectCreated:Post"|"s3:ObjectCreated:Copy"|"s3:ObjectCreated:CompleteMultipartUpload"|"s3:ObjectRemoved:*"|"s3:ObjectRemoved:Delete"|"s3:ObjectRemoved:DeleteMarkerCreated"|"s3:ObjectRestore:*"|"s3:ObjectRestore:Post"|"s3:ObjectRestore:Completed"|"s3:Replication:*"|"s3:Replication:OperationFailedReplication"|"s3:Replication:OperationNotTracked"|"s3:Replication:OperationMissedThreshold"|"s3:Replication:OperationReplicatedAfterThreshold"|"s3:ObjectRestore:Delete"|"s3:LifecycleTransition"|"s3:IntelligentTiering"|"s3:ObjectAcl:Put"|"s3:LifecycleExpiration:*"|"s3:LifecycleExpiration:Delete"|"s3:LifecycleExpiration:DeleteMarkerCreated"|"s3:ObjectTagging:*"|"s3:ObjectTagging:Put"|"s3:ObjectTagging:Delete"
          ),
          Queue = "string"
        ),
        CloudFunctionConfiguration = list(
          Id = "string",
          Event = "s3:ReducedRedundancyLostObject"|"s3:ObjectCreated:*"|"s3:ObjectCreated:Put"|"s3:ObjectCreated:Post"|"s3:ObjectCreated:Copy"|"s3:ObjectCreated:CompleteMultipartUpload"|"s3:ObjectRemoved:*"|"s3:ObjectRemoved:Delete"|"s3:ObjectRemoved:DeleteMarkerCreated"|"s3:ObjectRestore:*"|"s3:ObjectRestore:Post"|"s3:ObjectRestore:Completed"|"s3:Replication:*"|"s3:Replication:OperationFailedReplication"|"s3:Replication:OperationNotTracked"|"s3:Replication:OperationMissedThreshold"|"s3:Replication:OperationReplicatedAfterThreshold"|"s3:ObjectRestore:Delete"|"s3:LifecycleTransition"|"s3:IntelligentTiering"|"s3:ObjectAcl:Put"|"s3:LifecycleExpiration:*"|"s3:LifecycleExpiration:Delete"|"s3:LifecycleExpiration:DeleteMarkerCreated"|"s3:ObjectTagging:*"|"s3:ObjectTagging:Put"|"s3:ObjectTagging:Delete",
          Events = list(
            "s3:ReducedRedundancyLostObject"|"s3:ObjectCreated:*"|"s3:ObjectCreated:Put"|"s3:ObjectCreated:Post"|"s3:ObjectCreated:Copy"|"s3:ObjectCreated:CompleteMultipartUpload"|"s3:ObjectRemoved:*"|"s3:ObjectRemoved:Delete"|"s3:ObjectRemoved:DeleteMarkerCreated"|"s3:ObjectRestore:*"|"s3:ObjectRestore:Post"|"s3:ObjectRestore:Completed"|"s3:Replication:*"|"s3:Replication:OperationFailedReplication"|"s3:Replication:OperationNotTracked"|"s3:Replication:OperationMissedThreshold"|"s3:Replication:OperationReplicatedAfterThreshold"|"s3:ObjectRestore:Delete"|"s3:LifecycleTransition"|"s3:IntelligentTiering"|"s3:ObjectAcl:Put"|"s3:LifecycleExpiration:*"|"s3:LifecycleExpiration:Delete"|"s3:LifecycleExpiration:DeleteMarkerCreated"|"s3:ObjectTagging:*"|"s3:ObjectTagging:Put"|"s3:ObjectTagging:Delete"
          ),
          CloudFunction = "string",
          InvocationRole = "string"
        )
      ),
      ExpectedBucketOwner = "string"
    )
