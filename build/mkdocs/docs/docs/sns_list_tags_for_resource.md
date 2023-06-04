<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sns_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List all tags added to the specified Amazon SNS topic

### Description

List all tags added to the specified Amazon SNS topic. For an overview,
see [Amazon SNS
Tags](https://docs.aws.amazon.com/sns/latest/dg/sns-tags.html) in the
*Amazon Simple Notification Service Developer Guide*.

### Usage

    sns_list_tags_for_resource(ResourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sns_list_tags_for_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The ARN of the topic for which to list tags.</p></td>
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
      ResourceArn = "string"
    )
