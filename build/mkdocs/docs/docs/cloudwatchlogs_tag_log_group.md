<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchlogs_tag_log_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The TagLogGroup operation is on the path to deprecation

### Description

The TagLogGroup operation is on the path to deprecation. We recommend
that you use `tag_resource` instead.

Adds or updates the specified tags for the specified log group.

To list the tags for a log group, use `list_tags_for_resource`. To
remove tags, use `untag_resource`.

For more information about tags, see [Tag Log Groups in Amazon
CloudWatch
Logs](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Working-with-log-groups-and-streams.html#log-group-tagging)
in the *Amazon CloudWatch Logs User Guide*.

CloudWatch Logs doesn’t support IAM policies that prevent users from
assigning specified tags to log groups using the
`aws:Resource/key-name ` or `aws:TagKeys` condition keys. For more
information about using tags to control access, see [Controlling access
to Amazon Web Services resources using
tags](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html).

### Usage

    cloudwatchlogs_tag_log_group(logGroupName, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchlogs_tag_log_group_:_logGroupName">logGroupName</code></td>
<td><p>[required] The name of the log group.</p></td>
</tr>
<tr class="even">
<td><code id="cloudwatchlogs_tag_log_group_:_tags">tags</code></td>
<td><p>[required] The key-value pairs to use for the tags.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_log_group(
      logGroupName = "string",
      tags = list(
        "string"
      )
    )
