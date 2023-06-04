<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchlogs_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Displays the tags associated with a CloudWatch Logs resource

### Description

Displays the tags associated with a CloudWatch Logs resource. Currently,
log groups and destinations support tagging.

### Usage

    cloudwatchlogs_list_tags_for_resource(resourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchlogs_list_tags_for_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The ARN of the resource that you want to view tags
for.</p>
<p>The ARN format of a log group is
<code>arn:aws:logs:Region:account-id:log-group:log-group-name </code></p>
<p>The ARN format of a destination is
<code>arn:aws:logs:Region:account-id:destination:destination-name </code></p>
<p>For more information about ARN format, see <a
href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/iam-access-control-overview-cwl.html">CloudWatch
Logs resources and operations</a>.</p></td>
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

    svc$list_tags_for_resource(
      resourceArn = "string"
    )
