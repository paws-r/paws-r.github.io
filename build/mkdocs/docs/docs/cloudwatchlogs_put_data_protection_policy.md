<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchlogs_put_data_protection_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a data protection policy for the specified log group

### Description

Creates a data protection policy for the specified log group. A data
protection policy can help safeguard sensitive data that's ingested by
the log group by auditing and masking the sensitive log data.

Sensitive data is detected and masked when it is ingested into the log
group. When you set a data protection policy, log events ingested into
the log group before that time are not masked.

By default, when a user views a log event that includes masked data, the
sensitive data is replaced by asterisks. A user who has the
`logs:Unmask` permission can use a `get_log_events` or
`filter_log_events` operation with the `unmask` parameter set to `true`
to view the unmasked log events. Users with the `logs:Unmask` can also
view unmasked data in the CloudWatch Logs console by running a
CloudWatch Logs Insights query with the `unmask` query command.

For more information, including a list of types of data that can be
audited and masked, see [Protect sensitive log data with
masking](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/mask-sensitive-log-data.html).

### Usage

    cloudwatchlogs_put_data_protection_policy(logGroupIdentifier,
      policyDocument)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchlogs_put_data_protection_policy_:_logGroupIdentifier">logGroupIdentifier</code></td>
<td><p>[required] Specify either the log group name or log group
ARN.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchlogs_put_data_protection_policy_:_policyDocument">policyDocument</code></td>
<td><p>[required] Specify the data protection policy, in JSON.</p>
<p>This policy must include two JSON blocks:</p>
<ul>
<li><p>The first block must include both a <code>DataIdentifer</code>
array and an <code>Operation</code> property with an <code>Audit</code>
action. The <code>DataIdentifer</code> array lists the types of
sensitive data that you want to mask. For more information about the
available options, see <a
href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/">Types
of data that you can mask</a>.</p>
<p>The <code>Operation</code> property with an <code>Audit</code> action
is required to find the sensitive data terms. This <code>Audit</code>
action must contain a <code>FindingsDestination</code> object. You can
optionally use that <code>FindingsDestination</code> object to list one
or more destinations to send audit findings to. If you specify
destinations such as log groups, Kinesis Data Firehose streams, and S3
buckets, they must already exist.</p></li>
<li><p>The second block must include both a <code>DataIdentifer</code>
array and an <code>Operation</code> property with an
<code>Deidentify</code> action. The <code>DataIdentifer</code> array
must exactly match the <code>DataIdentifer</code> array in the first
block of the policy.</p>
<p>The <code>Operation</code> property with the <code>Deidentify</code>
action is what actually masks the data, and it must contain the
<code> "MaskConfig": {}</code> object. The
<code> "MaskConfig": {}</code> object must be empty.</p></li>
</ul>
<p>For an example data protection policy, see the
<strong>Examples</strong> section on this page.</p>
<p>The contents of two <code>DataIdentifer</code> arrays must match
exactly.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      logGroupIdentifier = "string",
      policyDocument = "string",
      lastUpdatedTime = 123
    )

### Request syntax

    svc$put_data_protection_policy(
      logGroupIdentifier = "string",
      policyDocument = "string"
    )
