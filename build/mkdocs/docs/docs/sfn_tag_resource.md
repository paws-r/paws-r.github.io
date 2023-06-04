<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sfn_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Add a tag to a Step Functions resource

### Description

Add a tag to a Step Functions resource.

An array of key-value pairs. For more information, see [Using Cost
Allocation
Tags](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html)
in the *Amazon Web Services Billing and Cost Management User Guide*, and
[Controlling Access Using IAM
Tags](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_iam-tags.html).

Tags may only contain Unicode letters, digits, white space, or these
symbols: `⁠_ . : / = + - @⁠`.

### Usage

    sfn_tag_resource(resourceArn, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sfn_tag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) for the Step Functions
state machine or activity.</p></td>
</tr>
<tr class="even">
<td><code id="sfn_tag_resource_:_tags">tags</code></td>
<td><p>[required] The list of tags to add to a resource.</p>
<p>Tags may only contain Unicode letters, digits, white space, or these
symbols: <code
style="white-space: pre;">⁠_ . : / = + - @⁠</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      resourceArn = "string",
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )
