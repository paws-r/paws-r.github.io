<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecs_describe_services</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified services running in your cluster

### Description

Describes the specified services running in your cluster.

### Usage

    ecs_describe_services(cluster, services, include)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ecs_describe_services_:_cluster">cluster</code></td>
<td><p>The short name or full Amazon Resource Name (ARN)the cluster that
hosts the service to describe. If you do not specify a cluster, the
default cluster is assumed. This parameter is required if the service or
services you are describing were launched in any cluster other than the
default cluster.</p></td>
</tr>
<tr class="even">
<td><code id="ecs_describe_services_:_services">services</code></td>
<td><p>[required] A list of services to describe. You may specify up to
10 services to describe in a single operation.</p></td>
</tr>
<tr class="odd">
<td><code id="ecs_describe_services_:_include">include</code></td>
<td><p>Determines whether you want to see the resource tags for the
service. If <code>TAGS</code> is specified, the tags are included in the
response. If this field is omitted, tags aren't included in the
response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      services = list(
        list(
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

    svc$describe_services(
      cluster = "string",
      services = list(
        "string"
      ),
      include = list(
        "TAGS"
      )
    )

### Examples

    ## Not run: 
    # This example provides descriptive information about the service named
    # `ecs-simple-service`.
    svc$describe_services(
      services = list(
        "ecs-simple-service"
      )
    )

    ## End(Not run)
