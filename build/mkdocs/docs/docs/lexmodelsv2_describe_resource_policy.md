<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelsv2_describe_resource_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the resource policy and policy revision for a bot or bot alias

### Description

Gets the resource policy and policy revision for a bot or bot alias.

### Usage

    lexmodelsv2_describe_resource_policy(resourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelsv2_describe_resource_policy_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the bot or bot alias
that the resource policy is attached to.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      resourceArn = "string",
      policy = "string",
      revisionId = "string"
    )

### Request syntax

    svc$describe_resource_policy(
      resourceArn = "string"
    )
