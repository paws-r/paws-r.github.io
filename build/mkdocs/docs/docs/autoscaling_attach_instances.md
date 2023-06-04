<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_attach_instances</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Attaches one or more EC2 instances to the specified Auto Scaling group

### Description

Attaches one or more EC2 instances to the specified Auto Scaling group.

When you attach instances, Amazon EC2 Auto Scaling increases the desired
capacity of the group by the number of instances being attached. If the
number of instances being attached plus the desired capacity of the
group exceeds the maximum size of the group, the operation fails.

If there is a Classic Load Balancer attached to your Auto Scaling group,
the instances are also registered with the load balancer. If there are
target groups attached to your Auto Scaling group, the instances are
also registered with the target groups.

For more information, see [Attach EC2 instances to your Auto Scaling
group](https://docs.aws.amazon.com/autoscaling/ec2/userguide/attach-instance-asg.html)
in the *Amazon EC2 Auto Scaling User Guide*.

### Usage

    autoscaling_attach_instances(InstanceIds, AutoScalingGroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="autoscaling_attach_instances_:_InstanceIds">InstanceIds</code></td>
<td><p>The IDs of the instances. You can specify up to 20
instances.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_attach_instances_:_AutoScalingGroupName">AutoScalingGroupName</code></td>
<td><p>[required] The name of the Auto Scaling group.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$attach_instances(
      InstanceIds = list(
        "string"
      ),
      AutoScalingGroupName = "string"
    )

### Examples

    ## Not run: 
    # This example attaches the specified instance to the specified Auto
    # Scaling group.
    svc$attach_instances(
      AutoScalingGroupName = "my-auto-scaling-group",
      InstanceIds = list(
        "i-93633f9b"
      )
    )

    ## End(Not run)
