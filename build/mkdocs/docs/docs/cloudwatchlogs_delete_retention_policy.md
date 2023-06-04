<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchlogs_delete_retention_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified retention policy

### Description

Deletes the specified retention policy.

Log events do not expire if they belong to log groups without a
retention policy.

### Usage

    cloudwatchlogs_delete_retention_policy(logGroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchlogs_delete_retention_policy_:_logGroupName">logGroupName</code></td>
<td><p>[required] The name of the log group.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_retention_policy(
      logGroupName = "string"
    )
