<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecs_describe_task_sets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the task sets in the specified cluster and service

### Description

Describes the task sets in the specified cluster and service. This is
used when a service uses the `EXTERNAL` deployment controller type. For
more information, see [Amazon ECS Deployment
Types](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html)
in the *Amazon Elastic Container Service Developer Guide*.

### Usage

    ecs_describe_task_sets(cluster, service, taskSets, include)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ecs_describe_task_sets_:_cluster">cluster</code></td>
<td><p>[required] The short name or full Amazon Resource Name (ARN) of
the cluster that hosts the service that the task sets exist in.</p></td>
</tr>
<tr class="even">
<td><code id="ecs_describe_task_sets_:_service">service</code></td>
<td><p>[required] The short name or full Amazon Resource Name (ARN) of
the service that the task sets exist in.</p></td>
</tr>
<tr class="odd">
<td><code id="ecs_describe_task_sets_:_taskSets">taskSets</code></td>
<td><p>The ID or full Amazon Resource Name (ARN) of task sets to
describe.</p></td>
</tr>
<tr class="even">
<td><code id="ecs_describe_task_sets_:_include">include</code></td>
<td><p>Specifies whether to see the resource tags for the task set. If
<code>TAGS</code> is specified, the tags are included in the response.
If this field is omitted, tags aren't included in the response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      taskSets = list(
        list(
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

    svc$describe_task_sets(
      cluster = "string",
      service = "string",
      taskSets = list(
        "string"
      ),
      include = list(
        "TAGS"
      )
    )
