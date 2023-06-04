<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_delete_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified scaling policy

### Description

Deletes the specified scaling policy.

Deleting either a step scaling policy or a simple scaling policy deletes
the underlying alarm action, but does not delete the alarm, even if it
no longer has an associated action.

For more information, see [Deleting a scaling
policy](https://docs.aws.amazon.com/autoscaling/ec2/userguide/deleting-scaling-policy.html)
in the *Amazon EC2 Auto Scaling User Guide*.

### Usage

    autoscaling_delete_policy(AutoScalingGroupName, PolicyName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="autoscaling_delete_policy_:_AutoScalingGroupName">AutoScalingGroupName</code></td>
<td><p>The name of the Auto Scaling group.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_delete_policy_:_PolicyName">PolicyName</code></td>
<td><p>[required] The name or Amazon Resource Name (ARN) of the
policy.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_policy(
      AutoScalingGroupName = "string",
      PolicyName = "string"
    )

### Examples

    ## Not run: 
    # This example deletes the specified Auto Scaling policy.
    svc$delete_policy(
      AutoScalingGroupName = "my-auto-scaling-group",
      PolicyName = "my-step-scale-out-policy"
    )

    ## End(Not run)
