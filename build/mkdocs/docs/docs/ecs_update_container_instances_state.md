<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecs_update_container_instances_state</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the status of an Amazon ECS container instance

### Description

Modifies the status of an Amazon ECS container instance.

Once a container instance has reached an `ACTIVE` state, you can change
the status of a container instance to `DRAINING` to manually remove an
instance from a cluster, for example to perform system updates, update
the Docker daemon, or scale down the cluster size.

A container instance can't be changed to `DRAINING` until it has reached
an `ACTIVE` status. If the instance is in any other status, an error
will be received.

When you set a container instance to `DRAINING`, Amazon ECS prevents new
tasks from being scheduled for placement on the container instance and
replacement service tasks are started on other container instances in
the cluster if the resources are available. Service tasks on the
container instance that are in the `PENDING` state are stopped
immediately.

Service tasks on the container instance that are in the `RUNNING` state
are stopped and replaced according to the service's deployment
configuration parameters, `minimumHealthyPercent` and `maximumPercent`.
You can change the deployment configuration of your service using
`update_service`.

-   If `minimumHealthyPercent` is below 100%, the scheduler can ignore
    `desiredCount` temporarily during task replacement. For example,
    `desiredCount` is four tasks, a minimum of 50% allows the scheduler
    to stop two existing tasks before starting two new tasks. If the
    minimum is 100%, the service scheduler can't remove existing tasks
    until the replacement tasks are considered healthy. Tasks for
    services that do not use a load balancer are considered healthy if
    they're in the `RUNNING` state. Tasks for services that use a load
    balancer are considered healthy if they're in the `RUNNING` state
    and are reported as healthy by the load balancer.

-   The `maximumPercent` parameter represents an upper limit on the
    number of running tasks during task replacement. You can use this to
    define the replacement batch size. For example, if `desiredCount` is
    four tasks, a maximum of 200% starts four new tasks before stopping
    the four tasks to be drained, provided that the cluster resources
    required to do this are available. If the maximum is 100%, then
    replacement tasks can't start until the draining tasks have stopped.

Any `PENDING` or `RUNNING` tasks that do not belong to a service aren't
affected. You must wait for them to finish or stop them manually.

A container instance has completed draining when it has no more
`RUNNING` tasks. You can verify this using `list_tasks`.

When a container instance has been drained, you can set a container
instance to `ACTIVE` status and once it has reached that status the
Amazon ECS scheduler can begin scheduling tasks on the instance again.

### Usage

    ecs_update_container_instances_state(cluster, containerInstances,
      status)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ecs_update_container_instances_state_:_cluster">cluster</code></td>
<td><p>The short name or full Amazon Resource Name (ARN) of the cluster
that hosts the container instance to update. If you do not specify a
cluster, the default cluster is assumed.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_update_container_instances_state_:_containerInstances">containerInstances</code></td>
<td><p>[required] A list of up to 10 container instance IDs or full ARN
entries.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecs_update_container_instances_state_:_status">status</code></td>
<td><p>[required] The container instance state to update the container
instance with. The only valid values for this action are
<code>ACTIVE</code> and <code>DRAINING</code>. A container instance can
only be updated to <code>DRAINING</code> status once it has reached an
<code>ACTIVE</code> state. If a container instance is in
<code>REGISTERING</code>, <code>DEREGISTERING</code>, or
<code>REGISTRATION_FAILED</code> state you can describe the container
instance but can't update the container instance state.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      containerInstances = list(
        list(
          containerInstanceArn = "string",
          ec2InstanceId = "string",
          capacityProviderName = "string",
          version = 123,
          versionInfo = list(
            agentVersion = "string",
            agentHash = "string",
            dockerVersion = "string"
          ),
          remainingResources = list(
            list(
              name = "string",
              type = "string",
              doubleValue = 123.0,
              longValue = 123,
              integerValue = 123,
              stringSetValue = list(
                "string"
              )
            )
          ),
          registeredResources = list(
            list(
              name = "string",
              type = "string",
              doubleValue = 123.0,
              longValue = 123,
              integerValue = 123,
              stringSetValue = list(
                "string"
              )
            )
          ),
          status = "string",
          statusReason = "string",
          agentConnected = TRUE|FALSE,
          runningTasksCount = 123,
          pendingTasksCount = 123,
          agentUpdateStatus = "PENDING"|"STAGING"|"STAGED"|"UPDATING"|"UPDATED"|"FAILED",
          attributes = list(
            list(
              name = "string",
              value = "string",
              targetType = "container-instance",
              targetId = "string"
            )
          ),
          registeredAt = as.POSIXct(
            "2015-01-01"
          ),
          attachments = list(
            list(
              id = "string",
              type = "string",
              status = "string",
              details = list(
                list(
                  name = "string",
                  value = "string"
                )
              )
            )
          ),
          tags = list(
            list(
              key = "string",
              value = "string"
            )
          ),
          healthStatus = list(
            overallStatus = "OK"|"IMPAIRED"|"INSUFFICIENT_DATA"|"INITIALIZING",
            details = list(
              list(
                type = "CONTAINER_RUNTIME",
                status = "OK"|"IMPAIRED"|"INSUFFICIENT_DATA"|"INITIALIZING",
                lastUpdated = as.POSIXct(
                  "2015-01-01"
                ),
                lastStatusChange = as.POSIXct(
                  "2015-01-01"
                )
              )
            )
          )
        )
      ),
      failures = list(
        list(
          arn = "string",
          reason = "string",
          detail = "string"
        )
      )
    )

### Request syntax

    svc$update_container_instances_state(
      cluster = "string",
      containerInstances = list(
        "string"
      ),
      status = "ACTIVE"|"DRAINING"|"REGISTERING"|"DEREGISTERING"|"REGISTRATION_FAILED"
    )
