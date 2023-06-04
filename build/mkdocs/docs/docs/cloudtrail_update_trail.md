<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudtrail_update_trail</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates trail settings that control what events you are logging, and how to handle log files

### Description

Updates trail settings that control what events you are logging, and how
to handle log files. Changes to a trail do not require stopping the
CloudTrail service. Use this action to designate an existing bucket for
log delivery. If the existing bucket has previously been a target for
CloudTrail log files, an IAM policy exists for the bucket.
`update_trail` must be called from the region in which the trail was
created; otherwise, an `InvalidHomeRegionException` is thrown.

### Usage

    cloudtrail_update_trail(Name, S3BucketName, S3KeyPrefix, SnsTopicName,
      IncludeGlobalServiceEvents, IsMultiRegionTrail, EnableLogFileValidation,
      CloudWatchLogsLogGroupArn, CloudWatchLogsRoleArn, KmsKeyId,
      IsOrganizationTrail)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudtrail_update_trail_:_Name">Name</code></td>
<td><p>[required] Specifies the name of the trail or trail ARN. If
<code>Name</code> is a trail name, the string must meet the following
requirements:</p>
<ul>
<li><p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods
(.), underscores (_), or dashes (-)</p></li>
<li><p>Start with a letter or number, and end with a letter or
number</p></li>
<li><p>Be between 3 and 128 characters</p></li>
<li><p>Have no adjacent periods, underscores or dashes. Names like <code
style="white-space: pre;">⁠my-_namespace⁠</code> and
<code>my--namespace</code> are not valid.</p></li>
<li><p>Not be in IP address format (for example, 192.168.5.4)</p></li>
</ul>
<p>If <code>Name</code> is a trail ARN, it must be in the following
format.</p>
<p><code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code></p></td>
</tr>
<tr class="even">
<td><code
id="cloudtrail_update_trail_:_S3BucketName">S3BucketName</code></td>
<td><p>Specifies the name of the Amazon S3 bucket designated for
publishing log files. See <a
href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-s3-bucket-naming-requirements.html">Amazon
S3 Bucket Naming Requirements</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudtrail_update_trail_:_S3KeyPrefix">S3KeyPrefix</code></td>
<td><p>Specifies the Amazon S3 key prefix that comes after the name of
the bucket you have designated for log file delivery. For more
information, see <a
href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html">Finding
Your CloudTrail Log Files</a>. The maximum length is 200
characters.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudtrail_update_trail_:_SnsTopicName">SnsTopicName</code></td>
<td><p>Specifies the name of the Amazon SNS topic defined for
notification of log file delivery. The maximum length is 256
characters.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudtrail_update_trail_:_IncludeGlobalServiceEvents">IncludeGlobalServiceEvents</code></td>
<td><p>Specifies whether the trail is publishing events from global
services such as IAM to the log files.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudtrail_update_trail_:_IsMultiRegionTrail">IsMultiRegionTrail</code></td>
<td><p>Specifies whether the trail applies only to the current region or
to all regions. The default is false. If the trail exists only in the
current region and this value is set to true, shadow trails
(replications of the trail) will be created in the other regions. If the
trail exists in all regions and this value is set to false, the trail
will remain in the region where it was created, and its shadow trails in
other regions will be deleted. As a best practice, consider using trails
that log events in all regions.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudtrail_update_trail_:_EnableLogFileValidation">EnableLogFileValidation</code></td>
<td><p>Specifies whether log file validation is enabled. The default is
false.</p>
<p>When you disable log file integrity validation, the chain of digest
files is broken after one hour. CloudTrail does not create digest files
for log files that were delivered during a period in which log file
integrity validation was disabled. For example, if you enable log file
integrity validation at noon on January 1, disable it at noon on January
2, and re-enable it at noon on January 10, digest files will not be
created for the log files delivered from noon on January 2 to noon on
January 10. The same applies whenever you stop CloudTrail logging or
delete a trail.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudtrail_update_trail_:_CloudWatchLogsLogGroupArn">CloudWatchLogsLogGroupArn</code></td>
<td><p>Specifies a log group name using an Amazon Resource Name (ARN), a
unique identifier that represents the log group to which CloudTrail logs
are delivered. You must use a log group that exists in your account.</p>
<p>Not required unless you specify
<code>CloudWatchLogsRoleArn</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudtrail_update_trail_:_CloudWatchLogsRoleArn">CloudWatchLogsRoleArn</code></td>
<td><p>Specifies the role for the CloudWatch Logs endpoint to assume to
write to a user's log group. You must use a role that exists in your
account.</p></td>
</tr>
<tr class="even">
<td><code id="cloudtrail_update_trail_:_KmsKeyId">KmsKeyId</code></td>
<td><p>Specifies the KMS key ID to use to encrypt the logs delivered by
CloudTrail. The value can be an alias name prefixed by "alias/", a fully
specified ARN to an alias, a fully specified ARN to a key, or a globally
unique identifier.</p>
<p>CloudTrail also supports KMS multi-Region keys. For more information
about multi-Region keys, see <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html">Using
multi-Region keys</a> in the <em>Key Management Service Developer
Guide</em>.</p>
<p>Examples:</p>
<ul>
<li><p>alias/MyAliasName</p></li>
<li><p>arn:aws:kms:us-east-2:123456789012:alias/MyAliasName</p></li>
<li><p>arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012</p></li>
<li><p>12345678-1234-1234-1234-123456789012</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="cloudtrail_update_trail_:_IsOrganizationTrail">IsOrganizationTrail</code></td>
<td><p>Specifies whether the trail is applied to all accounts in an
organization in Organizations, or only for the current Amazon Web
Services account. The default is false, and cannot be true unless the
call is made on behalf of an Amazon Web Services account that is the
management account or delegated administrator account for an
organization in Organizations. If the trail is not an organization trail
and this is set to <code>true</code>, the trail will be created in all
Amazon Web Services accounts that belong to the organization. If the
trail is an organization trail and this is set to <code>false</code>,
the trail will remain in the current Amazon Web Services account but be
deleted from all member accounts in the organization.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Name = "string",
      S3BucketName = "string",
      S3KeyPrefix = "string",
      SnsTopicName = "string",
      SnsTopicARN = "string",
      IncludeGlobalServiceEvents = TRUE|FALSE,
      IsMultiRegionTrail = TRUE|FALSE,
      TrailARN = "string",
      LogFileValidationEnabled = TRUE|FALSE,
      CloudWatchLogsLogGroupArn = "string",
      CloudWatchLogsRoleArn = "string",
      KmsKeyId = "string",
      IsOrganizationTrail = TRUE|FALSE
    )

### Request syntax

    svc$update_trail(
      Name = "string",
      S3BucketName = "string",
      S3KeyPrefix = "string",
      SnsTopicName = "string",
      IncludeGlobalServiceEvents = TRUE|FALSE,
      IsMultiRegionTrail = TRUE|FALSE,
      EnableLogFileValidation = TRUE|FALSE,
      CloudWatchLogsLogGroupArn = "string",
      CloudWatchLogsRoleArn = "string",
      KmsKeyId = "string",
      IsOrganizationTrail = TRUE|FALSE
    )
