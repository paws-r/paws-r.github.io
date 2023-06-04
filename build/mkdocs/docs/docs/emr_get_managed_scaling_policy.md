<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emr_get_managed_scaling_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Fetches the attached managed scaling policy for an Amazon EMR cluster

### Description

Fetches the attached managed scaling policy for an Amazon EMR cluster.

### Usage

    emr_get_managed_scaling_policy(ClusterId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="emr_get_managed_scaling_policy_:_ClusterId">ClusterId</code></td>
<td><p>[required] Specifies the ID of the cluster for which the managed
scaling policy will be fetched.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
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

### Request syntax

    svc$get_managed_scaling_policy(
      ClusterId = "string"
    )
