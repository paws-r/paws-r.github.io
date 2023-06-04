<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchlogs_get_data_protection_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about a log group data protection policy

### Description

Returns information about a log group data protection policy.

### Usage

    cloudwatchlogs_get_data_protection_policy(logGroupIdentifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchlogs_get_data_protection_policy_:_logGroupIdentifier">logGroupIdentifier</code></td>
<td><p>[required] The name or ARN of the log group that contains the
data protection policy that you want to see.</p></td>
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

    svc$get_data_protection_policy(
      logGroupIdentifier = "string"
    )
