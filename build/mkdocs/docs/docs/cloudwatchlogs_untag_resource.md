<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchlogs_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes one or more tags from the specified resource

### Description

Removes one or more tags from the specified resource.

### Usage

    cloudwatchlogs_untag_resource(resourceArn, tagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchlogs_untag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The ARN of the CloudWatch Logs resource that you're
removing tags from.</p>
<p>The ARN format of a log group is
<code>arn:aws:logs:Region:account-id:log-group:log-group-name </code></p>
<p>The ARN format of a destination is
<code>arn:aws:logs:Region:account-id:destination:destination-name </code></p>
<p>For more information about ARN format, see <a
href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/iam-access-control-overview-cwl.html">CloudWatch
Logs resources and operations</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchlogs_untag_resource_:_tagKeys">tagKeys</code></td>
<td><p>[required] The list of tag keys to remove from the
resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_resource(
      resourceArn = "string",
      tagKeys = list(
        "string"
      )
    )
