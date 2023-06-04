<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecs_delete_capacity_provider</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified capacity provider

### Description

Deletes the specified capacity provider.

The `FARGATE` and `FARGATE_SPOT` capacity providers are reserved and
can't be deleted. You can disassociate them from a cluster using either
the `put_cluster_capacity_providers` API or by deleting the cluster.

Prior to a capacity provider being deleted, the capacity provider must
be removed from the capacity provider strategy from all services. The
`update_service` API can be used to remove a capacity provider from a
service's capacity provider strategy. When updating a service, the
`forceNewDeployment` option can be used to ensure that any tasks using
the Amazon EC2 instance capacity provided by the capacity provider are
transitioned to use the capacity from the remaining capacity providers.
Only capacity providers that aren't associated with a cluster can be
deleted. To remove a capacity provider from a cluster, you can either
use `put_cluster_capacity_providers` or delete the cluster.

### Usage

    ecs_delete_capacity_provider(capacityProvider)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ecs_delete_capacity_provider_:_capacityProvider">capacityProvider</code></td>
<td><p>[required] The short name or full Amazon Resource Name (ARN) of
the capacity provider to delete.</p></td>
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

    svc$delete_capacity_provider(
      capacityProvider = "string"
    )
