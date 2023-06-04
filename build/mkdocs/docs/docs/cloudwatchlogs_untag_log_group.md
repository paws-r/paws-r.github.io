<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchlogs_untag_log_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The UntagLogGroup operation is on the path to deprecation

### Description

The UntagLogGroup operation is on the path to deprecation. We recommend
that you use `untag_resource` instead.

Removes the specified tags from the specified log group.

To list the tags for a log group, use `list_tags_for_resource`. To add
tags, use `tag_resource`.

CloudWatch Logs doesn’t support IAM policies that prevent users from
assigning specified tags to log groups using the
`aws:Resource/key-name ` or `aws:TagKeys` condition keys.

### Usage

    cloudwatchlogs_untag_log_group(logGroupName, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchlogs_untag_log_group_:_logGroupName">logGroupName</code></td>
<td><p>[required] The name of the log group.</p></td>
</tr>
<tr class="even">
<td><code id="cloudwatchlogs_untag_log_group_:_tags">tags</code></td>
<td><p>[required] The tag keys. The corresponding tags are removed from
the log group.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_log_group(
      logGroupName = "string",
      tags = list(
        "string"
      )
    )
