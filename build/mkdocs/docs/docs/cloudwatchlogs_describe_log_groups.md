<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchlogs_describe_log_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the specified log groups

### Description

Lists the specified log groups. You can list all your log groups or
filter the results by prefix. The results are ASCII-sorted by log group
name.

CloudWatch Logs doesn’t support IAM policies that control access to the
`describe_log_groups` action by using the `aws:ResourceTag/key-name `
condition key. Other CloudWatch Logs actions do support the use of the
`aws:ResourceTag/key-name ` condition key to control access. For more
information about using tags to control access, see [Controlling access
to Amazon Web Services resources using
tags](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html).

If you are using CloudWatch cross-account observability, you can use
this operation in a monitoring account and view data from the linked
source accounts. For more information, see [CloudWatch cross-account
observability](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html).

### Usage

    cloudwatchlogs_describe_log_groups(accountIdentifiers,
      logGroupNamePrefix, logGroupNamePattern, nextToken, limit,
      includeLinkedAccounts)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchlogs_describe_log_groups_:_accountIdentifiers">accountIdentifiers</code></td>
<td><p>When <code>includeLinkedAccounts</code> is set to
<code>True</code>, use this parameter to specify the list of accounts to
search. You can specify as many as 20 account IDs in the array.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchlogs_describe_log_groups_:_logGroupNamePrefix">logGroupNamePrefix</code></td>
<td><p>The prefix to match.</p>
<p><code>logGroupNamePrefix</code> and <code>logGroupNamePattern</code>
are mutually exclusive. Only one of these parameters can be
passed.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchlogs_describe_log_groups_:_logGroupNamePattern">logGroupNamePattern</code></td>
<td><p>If you specify a string for this parameter, the operation returns
only log groups that have names that match the string based on a
case-sensitive substring search. For example, if you specify
<code>Foo</code>, log groups named <code>FooBar</code>,
<code>aws/Foo</code>, and <code>GroupFoo</code> would match, but
<code>foo</code>, <code>F/o/o</code> and <code>Froo</code> would not
match.</p>
<p><code>logGroupNamePattern</code> and <code>logGroupNamePrefix</code>
are mutually exclusive. Only one of these parameters can be
passed.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchlogs_describe_log_groups_:_nextToken">nextToken</code></td>
<td><p>The token for the next set of items to return. (You received this
token from a previous call.)</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchlogs_describe_log_groups_:_limit">limit</code></td>
<td><p>The maximum number of items returned. If you don't specify a
value, the default is up to 50 items.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchlogs_describe_log_groups_:_includeLinkedAccounts">includeLinkedAccounts</code></td>
<td><p>If you are using a monitoring account, set this to
<code>True</code> to have the operation return log groups in the
accounts listed in <code>accountIdentifiers</code>.</p>
<p>If this parameter is set to <code>true</code> and
<code>accountIdentifiers</code> contains a null value, the operation
returns all log groups in the monitoring account and all log groups in
all source accounts that are linked to the monitoring account.</p>
<p>If you specify <code>includeLinkedAccounts</code> in your request,
then <code>metricFilterCount</code>, <code>retentionInDays</code>, and
<code>storedBytes</code> are not included in the response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      logGroups = list(
        list(
          logGroupName = "string",
          creationTime = 123,
          retentionInDays = 123,
          metricFilterCount = 123,
          arn = "string",
          storedBytes = 123,
          kmsKeyId = "string",
          dataProtectionStatus = "ACTIVATED"|"DELETED"|"ARCHIVED"|"DISABLED"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$describe_log_groups(
      accountIdentifiers = list(
        "string"
      ),
      logGroupNamePrefix = "string",
      logGroupNamePattern = "string",
      nextToken = "string",
      limit = 123,
      includeLinkedAccounts = TRUE|FALSE
    )
