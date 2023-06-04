<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecs_update_capacity_provider</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the parameters for a capacity provider

### Description

Modifies the parameters for a capacity provider.

### Usage

    ecs_update_capacity_provider(name, autoScalingGroupProvider)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ecs_update_capacity_provider_:_name">name</code></td>
<td><p>[required] The name of the capacity provider to update.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_update_capacity_provider_:_autoScalingGroupProvider">autoScalingGroupProvider</code></td>
<td><p>[required] An object that represent the parameters to update for
the Auto Scaling group capacity provider.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      capacityProvider = list(
        capacityProviderArn = "string",
        name = "string",
        status = "ACTIVE"|"INACTIVE",
        autoScalingGroupProvider = list(
          autoScalingGroupArn = "string",
          managedScaling = list(
            status = "ENABLED"|"DISABLED",
            targetCapacity = 123,
            minimumScalingStepSize = 123,
            maximumScalingStepSize = 123,
            instanceWarmupPeriod = 123
          ),
          managedTerminationProtection = "ENABLED"|"DISABLED"
        ),
        updateStatus = "DELETE_IN_PROGRESS"|"DELETE_COMPLETE"|"DELETE_FAILED"|"UPDATE_IN_PROGRESS"|"UPDATE_COMPLETE"|"UPDATE_FAILED",
        updateStatusReason = "string",
        tags = list(
          list(
            key = "string",
            value = "string"
          )
        )
      )
    )

### Request syntax

    svc$update_capacity_provider(
      name = "string",
      autoScalingGroupProvider = list(
        managedScaling = list(
          status = "ENABLED"|"DISABLED",
          targetCapacity = 123,
          minimumScalingStepSize = 123,
          maximumScalingStepSize = 123,
          instanceWarmupPeriod = 123
        ),
        managedTerminationProtection = "ENABLED"|"DISABLED"
      )
    )
