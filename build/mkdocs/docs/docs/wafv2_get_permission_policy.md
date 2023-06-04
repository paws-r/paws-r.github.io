<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wafv2_get_permission_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the IAM policy that is attached to the specified rule group

### Description

Returns the IAM policy that is attached to the specified rule group.

You must be the owner of the rule group to perform this operation.

### Usage

    wafv2_get_permission_policy(ResourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wafv2_get_permission_policy_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the rule group for
which you want to get the policy.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Policy = "string"
    )

### Request syntax

    svc$get_permission_policy(
      ResourceArn = "string"
    )
