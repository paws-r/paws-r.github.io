<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchlogs_list_tags_log_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The ListTagsLogGroup operation is on the path to deprecation

### Description

The ListTagsLogGroup operation is on the path to deprecation. We
recommend that you use `list_tags_for_resource` instead.

Lists the tags for the specified log group.

### Usage

    cloudwatchlogs_list_tags_log_group(logGroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchlogs_list_tags_log_group_:_logGroupName">logGroupName</code></td>
<td><p>[required] The name of the log group.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      tags = list(
        "string"
      )
    )

### Request syntax

    svc$list_tags_log_group(
      logGroupName = "string"
    )
