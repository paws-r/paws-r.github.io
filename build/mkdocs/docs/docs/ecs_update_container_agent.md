<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecs_update_container_agent</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the Amazon ECS container agent on a specified container instance

### Description

Updates the Amazon ECS container agent on a specified container
instance. Updating the Amazon ECS container agent doesn't interrupt
running tasks or services on the container instance. The process for
updating the agent differs depending on whether your container instance
was launched with the Amazon ECS-optimized AMI or another operating
system.

The `update_container_agent` API isn't supported for container instances
using the Amazon ECS-optimized Amazon Linux 2 (arm64) AMI. To update the
container agent, you can update the `ecs-init` package. This updates the
agent. For more information, see [Updating the Amazon ECS container
agent](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/agent-update-ecs-ami.html)
in the *Amazon Elastic Container Service Developer Guide*.

Agent updates with the `update_container_agent` API operation do not
apply to Windows container instances. We recommend that you launch new
container instances to update the agent version in your Windows
clusters.

The `update_container_agent` API requires an Amazon ECS-optimized AMI or
Amazon Linux AMI with the `ecs-init` service installed and running. For
help updating the Amazon ECS container agent on other operating systems,
see [Manually updating the Amazon ECS container
agent](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-update.html#manually_update_agent)
in the *Amazon Elastic Container Service Developer Guide*.

### Usage

    ecs_update_container_agent(cluster, containerInstance)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ecs_update_container_agent_:_cluster">cluster</code></td>
<td><p>The short name or full Amazon Resource Name (ARN) of the cluster
that your container instance is running on. If you do not specify a
cluster, the default cluster is assumed.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_update_container_agent_:_containerInstance">containerInstance</code></td>
<td><p>[required] The container instance ID or full ARN entries for the
container instance where you would like to update the Amazon ECS
container agent.</p></td>
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

    svc$update_container_agent(
      cluster = "string",
      containerInstance = "string"
    )
