<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecs_start_task</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts a new task from the specified task definition on the specified container instance or instances

### Description

Starts a new task from the specified task definition on the specified
container instance or instances.

Starting April 15, 2023, Amazon Web Services will not onboard new
customers to Amazon Elastic Inference (EI), and will help current
customers migrate their workloads to options that offer better price and
performance. After April 15, 2023, new customers will not be able to
launch instances with Amazon EI accelerators in Amazon SageMaker, Amazon
ECS, or Amazon EC2. However, customers who have used Amazon EI at least
once during the past 30-day period are considered current customers and
will be able to continue using the service.

Alternatively, you can use `run_task` to place tasks for you. For more
information, see [Scheduling
Tasks](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/scheduling_tasks.html)
in the *Amazon Elastic Container Service Developer Guide*.

### Usage

    ecs_start_task(cluster, containerInstances, enableECSManagedTags,
      enableExecuteCommand, group, networkConfiguration, overrides,
      propagateTags, referenceId, startedBy, tags, taskDefinition)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ecs_start_task_:_cluster">cluster</code></td>
<td><p>The short name or full Amazon Resource Name (ARN) of the cluster
where to start your task. If you do not specify a cluster, the default
cluster is assumed.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_start_task_:_containerInstances">containerInstances</code></td>
<td><p>[required] The container instance IDs or full ARN entries for the
container instances where you would like to place your task. You can
specify up to 10 container instances.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecs_start_task_:_enableECSManagedTags">enableECSManagedTags</code></td>
<td><p>Specifies whether to use Amazon ECS managed tags for the task.
For more information, see <a
href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html">Tagging
Your Amazon ECS Resources</a> in the <em>Amazon Elastic Container
Service Developer Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_start_task_:_enableExecuteCommand">enableExecuteCommand</code></td>
<td><p>Whether or not the execute command functionality is turned on for
the task. If <code>true</code>, this turns on the execute command
functionality on all containers in the task.</p></td>
</tr>
<tr class="odd">
<td><code id="ecs_start_task_:_group">group</code></td>
<td><p>The name of the task group to associate with the task. The
default value is the family name of the task definition (for example,
family:my-family-name).</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_start_task_:_networkConfiguration">networkConfiguration</code></td>
<td><p>The VPC subnet and security group configuration for tasks that
receive their own elastic network interface by using the
<code>awsvpc</code> networking mode.</p></td>
</tr>
<tr class="odd">
<td><code id="ecs_start_task_:_overrides">overrides</code></td>
<td><p>A list of container overrides in JSON format that specify the
name of a container in the specified task definition and the overrides
it receives. You can override the default command for a container
(that's specified in the task definition or Docker image) with a
<code>command</code> override. You can also override existing
environment variables (that are specified in the task definition or
Docker image) on a container or add new environment variables to it with
an <code>environment</code> override.</p>
<p>A total of 8192 characters are allowed for overrides. This limit
includes the JSON formatting characters of the override
structure.</p></td>
</tr>
<tr class="even">
<td><code id="ecs_start_task_:_propagateTags">propagateTags</code></td>
<td><p>Specifies whether to propagate the tags from the task definition
or the service to the task. If no value is specified, the tags aren't
propagated.</p></td>
</tr>
<tr class="odd">
<td><code id="ecs_start_task_:_referenceId">referenceId</code></td>
<td><p>The reference ID to use for the task.</p></td>
</tr>
<tr class="even">
<td><code id="ecs_start_task_:_startedBy">startedBy</code></td>
<td><p>An optional tag specified when a task is started. For example, if
you automatically trigger a task to run a batch process job, you could
apply a unique identifier for that job to your task with the
<code>startedBy</code> parameter. You can then identify which tasks
belong to that job by filtering the results of a <code>list_tasks</code>
call with the <code>startedBy</code> value. Up to 36 letters (uppercase
and lowercase), numbers, hyphens (-), and underscores (_) are
allowed.</p>
<p>If a task is started by an Amazon ECS service, the
<code>startedBy</code> parameter contains the deployment ID of the
service that starts it.</p></td>
</tr>
<tr class="odd">
<td><code id="ecs_start_task_:_tags">tags</code></td>
<td><p>The metadata that you apply to the task to help you categorize
and organize them. Each tag consists of a key and an optional value,
both of which you define.</p>
<p>The following basic restrictions apply to tags:</p>
<ul>
<li><p>Maximum number of tags per resource - 50</p></li>
<li><p>For each resource, each tag key must be unique, and each tag key
can have only one value.</p></li>
<li><p>Maximum key length - 128 Unicode characters in UTF-8</p></li>
<li><p>Maximum value length - 256 Unicode characters in UTF-8</p></li>
<li><p>If your tagging schema is used across multiple services and
resources, remember that other services may have restrictions on allowed
characters. Generally allowed characters are: letters, numbers, and
spaces representable in UTF-8, and the following characters: + - = . _ :
/ @.</p></li>
<li><p>Tag keys and values are case-sensitive.</p></li>
<li><p>Do not use <code style="white-space: pre;">⁠aws:⁠</code>, <code
style="white-space: pre;">⁠AWS:⁠</code>, or any upper or lowercase
combination of such as a prefix for either keys or values as it is
reserved for Amazon Web Services use. You cannot edit or delete tag keys
or values with this prefix. Tags with this prefix do not count against
your tags per resource limit.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="ecs_start_task_:_taskDefinition">taskDefinition</code></td>
<td><p>[required] The <code>family</code> and <code>revision</code>
(<code>family:revision</code>) or full ARN of the task definition to
start. If a <code>revision</code> isn't specified, the latest
<code>ACTIVE</code> revision is used.</p></td>
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

    svc$start_task(
      cluster = "string",
      containerInstances = list(
        "string"
      ),
      enableECSManagedTags = TRUE|FALSE,
      enableExecuteCommand = TRUE|FALSE,
      group = "string",
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
      propagateTags = "TASK_DEFINITION"|"SERVICE"|"NONE",
      referenceId = "string",
      startedBy = "string",
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      ),
      taskDefinition = "string"
    )
