<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecs_delete_service</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a specified service within a cluster

### Description

Deletes a specified service within a cluster. You can delete a service
if you have no running tasks in it and the desired task count is zero.
If the service is actively maintaining tasks, you can't delete it, and
you must update the service to a desired task count of zero. For more
information, see `update_service`.

When you delete a service, if there are still running tasks that require
cleanup, the service status moves from `ACTIVE` to `DRAINING`, and the
service is no longer visible in the console or in the `list_services`
API operation. After all tasks have transitioned to either `STOPPING` or
`STOPPED` status, the service status moves from `DRAINING` to
`INACTIVE`. Services in the `DRAINING` or `INACTIVE` status can still be
viewed with the `describe_services` API operation. However, in the
future, `INACTIVE` services may be cleaned up and purged from Amazon ECS
record keeping, and `describe_services` calls on those services return a
`ServiceNotFoundException` error.

If you attempt to create a new service with the same name as an existing
service in either `ACTIVE` or `DRAINING` status, you receive an error.

### Usage

    ecs_delete_service(cluster, service, force)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ecs_delete_service_:_cluster">cluster</code></td>
<td><p>The short name or full Amazon Resource Name (ARN) of the cluster
that hosts the service to delete. If you do not specify a cluster, the
default cluster is assumed.</p></td>
</tr>
<tr class="even">
<td><code id="ecs_delete_service_:_service">service</code></td>
<td><p>[required] The name of the service to delete.</p></td>
</tr>
<tr class="odd">
<td><code id="ecs_delete_service_:_force">force</code></td>
<td><p>If <code>true</code>, allows you to delete a service even if it
wasn't scaled down to zero tasks. It's only necessary to use this if the
service uses the <code>REPLICA</code> scheduling strategy.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      service = list(
        serviceArn = "string",
        serviceName = "string",
        clusterArn = "string",
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
        status = "string",
        desiredCount = 123,
        runningCount = 123,
        pendingCount = 123,
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
        taskDefinition = "string",
        deploymentConfiguration = list(
          deploymentCircuitBreaker = list(
            enable = TRUE|FALSE,
            rollback = TRUE|FALSE
          ),
          maximumPercent = 123,
          minimumHealthyPercent = 123,
          alarms = list(
            alarmNames = list(
              "string"
            ),
            enable = TRUE|FALSE,
            rollback = TRUE|FALSE
          )
        ),
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
        deployments = list(
          list(
            id = "string",
            status = "string",
            taskDefinition = "string",
            desiredCount = 123,
            pendingCount = 123,
            runningCount = 123,
            failedTasks = 123,
            createdAt = as.POSIXct(
              "2015-01-01"
            ),
            updatedAt = as.POSIXct(
              "2015-01-01"
            ),
            capacityProviderStrategy = list(
              list(
                capacityProvider = "string",
                weight = 123,
                base = 123
              )
            ),
            launchType = "EC2"|"FARGATE"|"EXTERNAL",
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
            rolloutState = "COMPLETED"|"FAILED"|"IN_PROGRESS",
            rolloutStateReason = "string",
            serviceConnectConfiguration = list(
              enabled = TRUE|FALSE,
              namespace = "string",
              services = list(
                list(
                  portName = "string",
                  discoveryName = "string",
                  clientAliases = list(
                    list(
                      port = 123,
                      dnsName = "string"
                    )
                  ),
                  ingressPortOverride = 123
                )
              ),
              logConfiguration = list(
                logDriver = "json-file"|"syslog"|"journald"|"gelf"|"fluentd"|"awslogs"|"splunk"|"awsfirelens",
                options = list(
                  "string"
                ),
                secretOptions = list(
                  list(
                    name = "string",
                    valueFrom = "string"
                  )
                )
              )
            ),
            serviceConnectResources = list(
              list(
                discoveryName = "string",
                discoveryArn = "string"
              )
            )
          )
        ),
        roleArn = "string",
        events = list(
          list(
            id = "string",
            createdAt = as.POSIXct(
              "2015-01-01"
            ),
            message = "string"
          )
        ),
        createdAt = as.POSIXct(
          "2015-01-01"
        ),
        placementConstraints = list(
          list(
            type = "distinctInstance"|"memberOf",
            expression = "string"
          )
        ),
        placementStrategy = list(
          list(
            type = "random"|"spread"|"binpack",
            field = "string"
          )
        ),
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
        healthCheckGracePeriodSeconds = 123,
        schedulingStrategy = "REPLICA"|"DAEMON",
        deploymentController = list(
          type = "ECS"|"CODE_DEPLOY"|"EXTERNAL"
        ),
        tags = list(
          list(
            key = "string",
            value = "string"
          )
        ),
        createdBy = "string",
        enableECSManagedTags = TRUE|FALSE,
        propagateTags = "TASK_DEFINITION"|"SERVICE"|"NONE",
        enableExecuteCommand = TRUE|FALSE
      )
    )

### Request syntax

    svc$delete_service(
      cluster = "string",
      service = "string",
      force = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example deletes the my-http-service service. The service must have
    # a desired count and running count of 0 before you can delete it.
    svc$delete_service(
      service = "my-http-service"
    )

    ## End(Not run)
