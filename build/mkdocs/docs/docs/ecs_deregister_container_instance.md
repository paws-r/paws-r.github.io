<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecs_deregister_container_instance</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deregisters an Amazon ECS container instance from the specified cluster

### Description

Deregisters an Amazon ECS container instance from the specified cluster.
This instance is no longer available to run tasks.

If you intend to use the container instance for some other purpose after
deregistration, we recommend that you stop all of the tasks running on
the container instance before deregistration. That prevents any orphaned
tasks from consuming resources.

Deregistering a container instance removes the instance from a cluster,
but it doesn't terminate the EC2 instance. If you are finished using the
instance, be sure to terminate it in the Amazon EC2 console to stop
billing.

If you terminate a running container instance, Amazon ECS automatically
deregisters the instance from your cluster (stopped container instances
or instances with disconnected agents aren't automatically deregistered
when terminated).

### Usage

    ecs_deregister_container_instance(cluster, containerInstance, force)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ecs_deregister_container_instance_:_cluster">cluster</code></td>
<td><p>The short name or full Amazon Resource Name (ARN) of the cluster
that hosts the container instance to deregister. If you do not specify a
cluster, the default cluster is assumed.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_deregister_container_instance_:_containerInstance">containerInstance</code></td>
<td><p>[required] The container instance ID or full ARN of the container
instance to deregister. For more information about the ARN format, see
<a
href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-account-settings.html#ecs-resource-ids">Amazon
Resource Name (ARN)</a> in the <em>Amazon ECS Developer
Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecs_deregister_container_instance_:_force">force</code></td>
<td><p>Forces the container instance to be deregistered. If you have
tasks running on the container instance when you deregister it with the
<code>force</code> option, these tasks remain running until you
terminate the instance or the tasks stop through some other means, but
they're orphaned (no longer monitored or accounted for by Amazon ECS).
If an orphaned task on your container instance is part of an Amazon ECS
service, then the service scheduler starts another copy of that task, on
a different container instance if possible.</p>
<p>Any containers in orphaned service tasks that are registered with a
Classic Load Balancer or an Application Load Balancer target group are
deregistered. They begin connection draining according to the settings
on the load balancer or target group.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      containerInstance = list(
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
    )

### Request syntax

    svc$deregister_container_instance(
      cluster = "string",
      containerInstance = "string",
      force = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example deregisters a container instance from the specified cluster
    # in your default region. If there are still tasks running on the
    # container instance, you must either stop those tasks before
    # deregistering, or use the force option.
    svc$deregister_container_instance(
      cluster = "default",
      containerInstance = "container_instance_UUID",
      force = TRUE
    )

    ## End(Not run)
