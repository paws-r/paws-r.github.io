<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wafv2_delete_permission_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Permanently deletes an IAM policy from the specified rule group

### Description

Permanently deletes an IAM policy from the specified rule group.

You must be the owner of the rule group to perform this operation.

### Usage

    wafv2_delete_permission_policy(ResourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wafv2_delete_permission_policy_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the rule group from
which you want to delete the policy.</p>
<p>You must be the owner of the rule group to perform this
operation.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_permission_policy(
      ResourceArn = "string"
    )
