<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchlogs_create_log_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a log group with the specified name

### Description

Creates a log group with the specified name. You can create up to 20,000
log groups per account.

You must use the following guidelines when naming a log group:

-   Log group names must be unique within a Region for an Amazon Web
    Services account.

-   Log group names can be between 1 and 512 characters long.

-   Log group names consist of the following characters: a-z, A-Z, 0-9,
    '\_' (underscore), '-' (hyphen), '/' (forward slash), '.' (period),
    and '#' (number sign)

When you create a log group, by default the log events in the log group
do not expire. To set a retention policy so that events expire and are
deleted after a specified time, use `put_retention_policy`.

If you associate an KMS key with the log group, ingested data is
encrypted using the KMS key. This association is stored as long as the
data encrypted with the KMS key is still within CloudWatch Logs. This
enables CloudWatch Logs to decrypt this data whenever it is requested.

If you attempt to associate a KMS key with the log group but the KMS
keydoes not exist or the KMS key is disabled, you receive an
`InvalidParameterException` error.

CloudWatch Logs supports only symmetric KMS keys. Do not associate an
asymmetric KMS key with your log group. For more information, see [Using
Symmetric and Asymmetric
Keys](https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html).

### Usage

    cloudwatchlogs_create_log_group(logGroupName, kmsKeyId, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchlogs_create_log_group_:_logGroupName">logGroupName</code></td>
<td><p>[required] The name of the log group.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchlogs_create_log_group_:_kmsKeyId">kmsKeyId</code></td>
<td><p>The Amazon Resource Name (ARN) of the KMS key to use when
encrypting log data. For more information, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html#arn-syntax-kms">Amazon
Resource Names</a>.</p></td>
</tr>
<tr class="odd">
<td><code id="cloudwatchlogs_create_log_group_:_tags">tags</code></td>
<td><p>The key-value pairs to use for the tags.</p>
<p>You can grant users access to certain log groups while preventing
them from accessing other log groups. To do so, tag your groups and use
IAM policies that refer to those tags. To assign tags when you create a
log group, you must have either the <code>logs:TagResource</code> or
<code>logs:TagLogGroup</code> permission. For more information about
tagging, see <a
href="https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html">Tagging
Amazon Web Services resources</a>. For more information about using tags
to control access, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html">Controlling
access to Amazon Web Services resources using tags</a>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_log_group(
      logGroupName = "string",
      kmsKeyId = "string",
      tags = list(
        "string"
      )
    )
