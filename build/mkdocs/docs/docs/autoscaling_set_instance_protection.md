<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_set_instance_protection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the instance protection settings of the specified instances

### Description

Updates the instance protection settings of the specified instances.
This operation cannot be called on instances in a warm pool.

For more information about preventing instances that are part of an Auto
Scaling group from terminating on scale in, see [Using instance scale-in
protection](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-instance-protection.html)
in the *Amazon EC2 Auto Scaling User Guide*.

If you exceed your maximum limit of instance IDs, which is 50 per Auto
Scaling group, the call fails.

### Usage

    autoscaling_set_instance_protection(InstanceIds, AutoScalingGroupName,
      ProtectedFromScaleIn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="autoscaling_set_instance_protection_:_InstanceIds">InstanceIds</code></td>
<td><p>[required] One or more instance IDs. You can specify up to 50
instances.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_set_instance_protection_:_AutoScalingGroupName">AutoScalingGroupName</code></td>
<td><p>[required] The name of the Auto Scaling group.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_set_instance_protection_:_ProtectedFromScaleIn">ProtectedFromScaleIn</code></td>
<td><p>[required] Indicates whether the instance is protected from
termination by Amazon EC2 Auto Scaling when scaling in.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$set_instance_protection(
      InstanceIds = list(
        "string"
      ),
      AutoScalingGroupName = "string",
      ProtectedFromScaleIn = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example enables instance protection for the specified instance.
    svc$set_instance_protection(
      AutoScalingGroupName = "my-auto-scaling-group",
      InstanceIds = list(
        "i-93633f9b"
      ),
      ProtectedFromScaleIn = TRUE
    )

    # This example disables instance protection for the specified instance.
    svc$set_instance_protection(
      AutoScalingGroupName = "my-auto-scaling-group",
      InstanceIds = list(
        "i-93633f9b"
      ),
      ProtectedFromScaleIn = FALSE
    )

    ## End(Not run)
