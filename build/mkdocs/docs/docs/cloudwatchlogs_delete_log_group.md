<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchlogs_delete_log_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified log group and permanently deletes all the archived log events associated with the log group

### Description

Deletes the specified log group and permanently deletes all the archived
log events associated with the log group.

### Usage

    cloudwatchlogs_delete_log_group(logGroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchlogs_delete_log_group_:_logGroupName">logGroupName</code></td>
<td><p>[required] The name of the log group.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_log_group(
      logGroupName = "string"
    )
