<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchlogs_delete_data_protection_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the data protection policy from the specified log group

### Description

Deletes the data protection policy from the specified log group.

For more information about data protection policies, see
`put_data_protection_policy`.

### Usage

    cloudwatchlogs_delete_data_protection_policy(logGroupIdentifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchlogs_delete_data_protection_policy_:_logGroupIdentifier">logGroupIdentifier</code></td>
<td><p>[required] The name or ARN of the log group that you want to
delete the data protection policy for.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_data_protection_policy(
      logGroupIdentifier = "string"
    )
