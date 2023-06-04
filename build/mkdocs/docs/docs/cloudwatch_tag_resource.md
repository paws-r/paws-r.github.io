<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatch_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Assigns one or more tags (key-value pairs) to the specified CloudWatch resource

### Description

Assigns one or more tags (key-value pairs) to the specified CloudWatch
resource. Currently, the only CloudWatch resources that can be tagged
are alarms and Contributor Insights rules.

Tags can help you organize and categorize your resources. You can also
use them to scope user permissions by granting a user permission to
access or change only resources with certain tag values.

Tags don't have any semantic meaning to Amazon Web Services and are
interpreted strictly as strings of characters.

You can use the `tag_resource` action with an alarm that already has
tags. If you specify a new tag key for the alarm, this tag is appended
to the list of tags associated with the alarm. If you specify a tag key
that is already associated with the alarm, the new tag value that you
specify replaces the previous value for that tag.

You can associate as many as 50 tags with a CloudWatch resource.

### Usage

    cloudwatch_tag_resource(ResourceARN, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatch_tag_resource_:_ResourceARN">ResourceARN</code></td>
<td><p>[required] The ARN of the CloudWatch resource that you're adding
tags to.</p>
<p>The ARN format of an alarm is
<code>arn:aws:cloudwatch:Region:account-id:alarm:alarm-name </code></p>
<p>The ARN format of a Contributor Insights rule is
<code>arn:aws:cloudwatch:Region:account-id:insight-rule:insight-rule-name </code></p>
<p>For more information about ARN format, see <a
href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazoncloudwatch.html#amazoncloudwatch-resources-for-iam-policies">Resource
Types Defined by Amazon CloudWatch</a> in the <em>Amazon Web Services
General Reference</em>.</p></td>
</tr>
<tr class="even">
<td><code id="cloudwatch_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] The list of key-value pairs to associate with the
alarm.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      ResourceARN = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
