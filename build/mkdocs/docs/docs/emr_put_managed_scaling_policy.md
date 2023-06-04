<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emr_put_managed_scaling_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates or updates a managed scaling policy for an Amazon EMR cluster

### Description

Creates or updates a managed scaling policy for an Amazon EMR cluster.
The managed scaling policy defines the limits for resources, such as
Amazon EC2 instances that can be added or terminated from a cluster. The
policy only applies to the core and task nodes. The master node cannot
be scaled after initial configuration.

### Usage

    emr_put_managed_scaling_policy(ClusterId, ManagedScalingPolicy)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="emr_put_managed_scaling_policy_:_ClusterId">ClusterId</code></td>
<td><p>[required] Specifies the ID of an Amazon EMR cluster where the
managed scaling policy is attached.</p></td>
</tr>
<tr class="even">
<td><code
id="emr_put_managed_scaling_policy_:_ManagedScalingPolicy">ManagedScalingPolicy</code></td>
<td><p>[required] Specifies the constraints for the managed scaling
policy.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_managed_scaling_policy(
      ClusterId = "string",
      ManagedScalingPolicy = list(
        ComputeLimits = list(
          UnitType = "InstanceFleetUnits"|"Instances"|"VCPU",
          MinimumCapacityUnits = 123,
          MaximumCapacityUnits = 123,
          MaximumOnDemandCapacityUnits = 123,
          MaximumCoreCapacityUnits = 123
        )
      )
    )
