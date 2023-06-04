<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatch_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Displays the tags associated with a CloudWatch resource

### Description

Displays the tags associated with a CloudWatch resource. Currently,
alarms and Contributor Insights rules support tagging.

### Usage

    cloudwatch_list_tags_for_resource(ResourceARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatch_list_tags_for_resource_:_ResourceARN">ResourceARN</code></td>
<td><p>[required] The ARN of the CloudWatch resource that you want to
view tags for.</p>
<p>The ARN format of an alarm is
<code>arn:aws:cloudwatch:Region:account-id:alarm:alarm-name </code></p>
<p>The ARN format of a Contributor Insights rule is
<code>arn:aws:cloudwatch:Region:account-id:insight-rule:insight-rule-name </code></p>
<p>For more information about ARN format, see <a
href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazoncloudwatch.html#amazoncloudwatch-resources-for-iam-policies">Resource
Types Defined by Amazon CloudWatch</a> in the <em>Amazon Web Services
General Reference</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Request syntax

    svc$list_tags_for_resource(
      ResourceARN = "string"
    )
