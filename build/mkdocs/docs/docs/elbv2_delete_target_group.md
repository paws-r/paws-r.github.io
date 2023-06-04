<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elbv2_delete_target_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified target group

### Description

Deletes the specified target group.

You can delete a target group if it is not referenced by any actions.
Deleting a target group also deletes any associated health checks.
Deleting a target group does not affect its registered targets. For
example, any EC2 instances continue to run until you stop or terminate
them.

### Usage

    elbv2_delete_target_group(TargetGroupArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elbv2_delete_target_group_:_TargetGroupArn">TargetGroupArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the target
group.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_target_group(
      TargetGroupArn = "string"
    )

### Examples

    ## Not run: 
    # This example deletes the specified target group.
    svc$delete_target_group(
      TargetGroupArn = "arn:aws:elasticloadbalancing:us-west-2:123456789012:tar..."
    )

    ## End(Not run)
