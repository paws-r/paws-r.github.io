<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchlogs_put_resource_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates or updates a resource policy allowing other Amazon Web Services services to put log events to this account, such as Amazon Route 53

### Description

Creates or updates a resource policy allowing other Amazon Web Services
services to put log events to this account, such as Amazon Route 53. An
account can have up to 10 resource policies per Amazon Web Services
Region.

### Usage

    cloudwatchlogs_put_resource_policy(policyName, policyDocument)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchlogs_put_resource_policy_:_policyName">policyName</code></td>
<td><p>Name of the new policy. This parameter is required.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchlogs_put_resource_policy_:_policyDocument">policyDocument</code></td>
<td><p>Details of the new policy, including the identity of the
principal that is enabled to put logs to this account. This is formatted
as a JSON string. This parameter is required.</p>
<p>The following example creates a resource policy enabling the Route 53
service to put DNS query logs in to the specified log group. Replace
<code>"logArn"</code> with the ARN of your CloudWatch Logs resource,
such as a log group or log stream.</p>
<p>CloudWatch Logs also supports <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-sourcearn">aws:SourceArn</a>
and <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-sourceaccount">aws:SourceAccount</a>
condition context keys.</p>
<p>In the example resource policy, you would replace the value of
<code>SourceArn</code> with the resource making the call from Route 53
to CloudWatch Logs. You would also replace the value of
<code>SourceAccount</code> with the Amazon Web Services account ID
making that call.</p>
<p><code
style="white-space: pre;">⁠{ "Version": "2012-10-17", "Statement": [ { "Sid": "Route53LogsToCloudWatchLogs", "Effect": "Allow", "Principal": { "Service": [ "route53.amazonaws.com" ] }, "Action": "logs:PutLogEvents", "Resource": "logArn", "Condition": { "ArnLike": { "aws:SourceArn": "myRoute53ResourceArn" }, "StringEquals": { "aws:SourceAccount": "myAwsAccountId" } } } ] }⁠</code></p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      resourcePolicy = list(
        policyName = "string",
        policyDocument = "string",
        lastUpdatedTime = 123
      )
    )

### Request syntax

    svc$put_resource_policy(
      policyName = "string",
      policyDocument = "string"
    )
