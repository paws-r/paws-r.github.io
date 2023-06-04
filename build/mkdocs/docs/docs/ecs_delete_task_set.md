<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecs_delete_task_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a specified task set within a service

### Description

Deletes a specified task set within a service. This is used when a
service uses the `EXTERNAL` deployment controller type. For more
information, see [Amazon ECS deployment
types](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html)
in the *Amazon Elastic Container Service Developer Guide*.

### Usage

    ecs_delete_task_set(cluster, service, taskSet, force)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ecs_delete_task_set_:_cluster">cluster</code></td>
<td><p>[required] The short name or full Amazon Resource Name (ARN) of
the cluster that hosts the service that the task set found in to
delete.</p></td>
</tr>
<tr class="even">
<td><code id="ecs_delete_task_set_:_service">service</code></td>
<td><p>[required] The short name or full Amazon Resource Name (ARN) of
the service that hosts the task set to delete.</p></td>
</tr>
<tr class="odd">
<td><code id="ecs_delete_task_set_:_taskSet">taskSet</code></td>
<td><p>[required] The task set ID or full Amazon Resource Name (ARN) of
the task set to delete.</p></td>
</tr>
<tr class="even">
<td><code id="ecs_delete_task_set_:_force">force</code></td>
<td><p>If <code>true</code>, you can delete a task set even if it hasn't
been scaled down to zero.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      taskSet = list(
        id = "string",
        taskSetArn = "string",
        serviceArn = "string",
        clusterArn = "string",
        startedBy = "string",
        externalId = "string",
        status = "string",
        taskDefinition = "string",
        computedDesiredCount = 123,
        pendingCount = 123,
        runningCount = 123,
        createdAt = as.POSIXct(
          "2015-01-01"
        ),
        updatedAt = as.POSIXct(
          "2015-01-01"
        ),
        launchType = "EC2"|"FARGATE"|"EXTERNAL",
        capacityProviderStrategy = list(
          list(
            capacityProvider = "string",
            weight = 123,
            base = 123
          )
        ),
        platformVersion = "string",
        platformFamily = "string",
        networkConfiguration = list(
          awsvpcConfiguration = list(
            subnets = list(
              "string"
            ),
            securityGroups = list(
              "string"
            ),
            assignPublicIp = "ENABLED"|"DISABLED"
          )
        ),
        loadBalancers = list(
          list(
            targetGroupArn = "string",
            loadBalancerName = "string",
            containerName = "string",
            containerPort = 123
          )
        ),
        serviceRegistries = list(
          list(
            registryArn = "string",
            port = 123,
            containerName = "string",
            containerPort = 123
          )
        ),
        scale = list(
          value = 123.0,
          unit = "PERCENT"
        ),
        stabilityStatus = "STEADY_STATE"|"STABILIZING",
        stabilityStatusAt = as.POSIXct(
          "2015-01-01"
        ),
        tags = list(
          list(
            key = "string",
            value = "string"
          )
        )
      )
    )

### Request syntax

    svc$delete_task_set(
      cluster = "string",
      service = "string",
      taskSet = "string",
      force = TRUE|FALSE
    )
