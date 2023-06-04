<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecs_update_task_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies a task set

### Description

Modifies a task set. This is used when a service uses the `EXTERNAL`
deployment controller type. For more information, see [Amazon ECS
Deployment
Types](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html)
in the *Amazon Elastic Container Service Developer Guide*.

### Usage

    ecs_update_task_set(cluster, service, taskSet, scale)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ecs_update_task_set_:_cluster">cluster</code></td>
<td><p>[required] The short name or full Amazon Resource Name (ARN) of
the cluster that hosts the service that the task set is found
in.</p></td>
</tr>
<tr class="even">
<td><code id="ecs_update_task_set_:_service">service</code></td>
<td><p>[required] The short name or full Amazon Resource Name (ARN) of
the service that the task set is found in.</p></td>
</tr>
<tr class="odd">
<td><code id="ecs_update_task_set_:_taskSet">taskSet</code></td>
<td><p>[required] The short name or full Amazon Resource Name (ARN) of
the task set to update.</p></td>
</tr>
<tr class="even">
<td><code id="ecs_update_task_set_:_scale">scale</code></td>
<td><p>[required] A floating-point percentage of the desired number of
tasks to place and keep running in the task set.</p></td>
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

    svc$update_task_set(
      cluster = "string",
      service = "string",
      taskSet = "string",
      scale = list(
        value = 123.0,
        unit = "PERCENT"
      )
    )
