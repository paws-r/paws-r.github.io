<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecs_describe_tasks</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes a specified task or tasks

### Description

Describes a specified task or tasks.

Currently, stopped tasks appear in the returned results for at least one
hour.

### Usage

    ecs_describe_tasks(cluster, tasks, include)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ecs_describe_tasks_:_cluster">cluster</code></td>
<td><p>The short name or full Amazon Resource Name (ARN) of the cluster
that hosts the task or tasks to describe. If you do not specify a
cluster, the default cluster is assumed. This parameter is required if
the task or tasks you are describing were launched in any cluster other
than the default cluster.</p></td>
</tr>
<tr class="even">
<td><code id="ecs_describe_tasks_:_tasks">tasks</code></td>
<td><p>[required] A list of up to 100 task IDs or full ARN
entries.</p></td>
</tr>
<tr class="odd">
<td><code id="ecs_describe_tasks_:_include">include</code></td>
<td><p>Specifies whether you want to see the resource tags for the task.
If <code>TAGS</code> is specified, the tags are included in the
response. If this field is omitted, tags aren't included in the
response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      tasks = list(
        list(
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
          attributes = list(
            list(
              name = "string",
              value = "string",
              targetType = "container-instance",
              targetId = "string"
            )
          ),
          availabilityZone = "string",
          capacityProviderName = "string",
          clusterArn = "string",
          connectivity = "CONNECTED"|"DISCONNECTED",
          connectivityAt = as.POSIXct(
            "2015-01-01"
          ),
          containerInstanceArn = "string",
          containers = list(
            list(
              containerArn = "string",
              taskArn = "string",
              name = "string",
              image = "string",
              imageDigest = "string",
              runtimeId = "string",
              lastStatus = "string",
              exitCode = 123,
              reason = "string",
              networkBindings = list(
                list(
                  bindIP = "string",
                  containerPort = 123,
                  hostPort = 123,
                  protocol = "tcp"|"udp",
                  containerPortRange = "string",
                  hostPortRange = "string"
                )
              ),
              networkInterfaces = list(
                list(
                  attachmentId = "string",
                  privateIpv4Address = "string",
                  ipv6Address = "string"
                )
              ),
              healthStatus = "HEALTHY"|"UNHEALTHY"|"UNKNOWN",
              managedAgents = list(
                list(
                  lastStartedAt = as.POSIXct(
                    "2015-01-01"
                  ),
                  name = "ExecuteCommandAgent",
                  reason = "string",
                  lastStatus = "string"
                )
              ),
              cpu = "string",
              memory = "string",
              memoryReservation = "string",
              gpuIds = list(
                "string"
              )
            )
          ),
          cpu = "string",
          createdAt = as.POSIXct(
            "2015-01-01"
          ),
          desiredStatus = "string",
          enableExecuteCommand = TRUE|FALSE,
          executionStoppedAt = as.POSIXct(
            "2015-01-01"
          ),
          group = "string",
          healthStatus = "HEALTHY"|"UNHEALTHY"|"UNKNOWN",
          inferenceAccelerators = list(
            list(
              deviceName = "string",
              deviceType = "string"
            )
          ),
          lastStatus = "string",
          launchType = "EC2"|"FARGATE"|"EXTERNAL",
          memory = "string",
          overrides = list(
            containerOverrides = list(
              list(
                name = "string",
                command = list(
                  "string"
                ),
                environment = list(
                  list(
                    name = "string",
                    value = "string"
                  )
                ),
                environmentFiles = list(
                  list(
                    value = "string",
                    type = "s3"
                  )
                ),
                cpu = 123,
                memory = 123,
                memoryReservation = 123,
                resourceRequirements = list(
                  list(
                    value = "string",
                    type = "GPU"|"InferenceAccelerator"
                  )
                )
              )
            ),
            cpu = "string",
            inferenceAcceleratorOverrides = list(
              list(
                deviceName = "string",
                deviceType = "string"
              )
            ),
            executionRoleArn = "string",
            memory = "string",
            taskRoleArn = "string",
            ephemeralStorage = list(
              sizeInGiB = 123
            )
          ),
          platformVersion = "string",
          platformFamily = "string",
          pullStartedAt = as.POSIXct(
            "2015-01-01"
          ),
          pullStoppedAt = as.POSIXct(
            "2015-01-01"
          ),
          startedAt = as.POSIXct(
            "2015-01-01"
          ),
          startedBy = "string",
          stopCode = "TaskFailedToStart"|"EssentialContainerExited"|"UserInitiated"|"ServiceSchedulerInitiated"|"SpotInterruption"|"TerminationNotice",
          stoppedAt = as.POSIXct(
            "2015-01-01"
          ),
          stoppedReason = "string",
          stoppingAt = as.POSIXct(
            "2015-01-01"
          ),
          tags = list(
            list(
              key = "string",
              value = "string"
            )
          ),
          taskArn = "string",
          taskDefinitionArn = "string",
          version = 123,
          ephemeralStorage = list(
            sizeInGiB = 123
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

    svc$describe_tasks(
      cluster = "string",
      tasks = list(
        "string"
      ),
      include = list(
        "TAGS"
      )
    )

### Examples

    ## Not run: 
    # This example provides a description of the specified task, using the
    # task UUID as an identifier.
    svc$describe_tasks(
      tasks = list(
        "c5cba4eb-5dad-405e-96db-71ef8eefe6a8"
      )
    )

    ## End(Not run)
