<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatch_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes one or more tags from the specified resource

### Description

Removes one or more tags from the specified resource.

### Usage

    cloudwatch_untag_resource(ResourceARN, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatch_untag_resource_:_ResourceARN">ResourceARN</code></td>
<td><p>[required] The ARN of the CloudWatch resource that you're
removing tags from.</p>
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
<td><code id="cloudwatch_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] The list of tag keys to remove from the
resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_resource(
      ResourceARN = "string",
      TagKeys = list(
        "string"
      )
    )
