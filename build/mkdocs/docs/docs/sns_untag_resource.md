<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sns_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Remove tags from the specified Amazon SNS topic

### Description

Remove tags from the specified Amazon SNS topic. For an overview, see
[Amazon SNS
Tags](https://docs.aws.amazon.com/sns/latest/dg/sns-tags.html) in the
*Amazon SNS Developer Guide*.

### Usage

    sns_untag_resource(ResourceArn, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sns_untag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The ARN of the topic from which to remove
tags.</p></td>
</tr>
<tr class="even">
<td><code id="sns_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] The list of tag keys to remove from the specified
topic.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_resource(
      ResourceArn = "string",
      TagKeys = list(
        "string"
      )
    )
