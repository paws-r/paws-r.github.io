<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecs_run_task</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts a new task using the specified task definition

### Description

Starts a new task using the specified task definition.

You can allow Amazon ECS to place tasks for you, or you can customize
how Amazon ECS places tasks using placement constraints and placement
strategies. For more information, see [Scheduling
Tasks](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/scheduling_tasks.html)
in the *Amazon Elastic Container Service Developer Guide*.

Alternatively, you can use `start_task` to use your own scheduler or
place tasks manually on specific container instances.

Starting April 15, 2023, Amazon Web Services will not onboard new
customers to Amazon Elastic Inference (EI), and will help current
customers migrate their workloads to options that offer better price and
performance. After April 15, 2023, new customers will not be able to
launch instances with Amazon EI accelerators in Amazon SageMaker, Amazon
ECS, or Amazon EC2. However, customers who have used Amazon EI at least
once during the past 30-day period are considered current customers and
will be able to continue using the service.

The Amazon ECS API follows an eventual consistency model. This is
because of the distributed nature of the system supporting the API. This
means that the result of an API command you run that affects your Amazon
ECS resources might not be immediately visible to all subsequent
commands you run. Keep this in mind when you carry out an API command
that immediately follows a previous API command.

To manage eventual consistency, you can do the following:

-   Confirm the state of the resource before you run a command to modify
    it. Run the DescribeTasks command using an exponential backoff
    algorithm to ensure that you allow enough time for the previous
    command to propagate through the system. To do this, run the
    DescribeTasks command repeatedly, starting with a couple of seconds
    of wait time and increasing gradually up to five minutes of wait
    time.

-   Add wait time between subsequent commands, even if the DescribeTasks
    command returns an accurate response. Apply an exponential backoff
    algorithm starting with a couple of seconds of wait time, and
    increase gradually up to about five minutes of wait time.

### Usage

    ecs_run_task(capacityProviderStrategy, cluster, count,
      enableECSManagedTags, enableExecuteCommand, group, launchType,
      networkConfiguration, overrides, placementConstraints,
      placementStrategy, platformVersion, propagateTags, referenceId,
      startedBy, tags, taskDefinition)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ecs_run_task_:_capacityProviderStrategy">capacityProviderStrategy</code></td>
<td><p>The capacity provider strategy to use for the task.</p>
<p>If a <code>capacityProviderStrategy</code> is specified, the
<code>launchType</code> parameter must be omitted. If no
<code>capacityProviderStrategy</code> or <code>launchType</code> is
specified, the <code>defaultCapacityProviderStrategy</code> for the
cluster is used.</p>
<p>When you use cluster auto scaling, you must specify
<code>capacityProviderStrategy</code> and not
<code>launchType</code>.</p>
<p>A capacity provider strategy may contain a maximum of 6 capacity
providers.</p></td>
</tr>
<tr class="even">
<td><code id="ecs_run_task_:_cluster">cluster</code></td>
<td><p>The short name or full Amazon Resource Name (ARN) of the cluster
to run your task on. If you do not specify a cluster, the default
cluster is assumed.</p></td>
</tr>
<tr class="odd">
<td><code id="ecs_run_task_:_count">count</code></td>
<td><p>The number of instantiations of the specified task to place on
your cluster. You can specify up to 10 tasks for each call.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_run_task_:_enableECSManagedTags">enableECSManagedTags</code></td>
<td><p>Specifies whether to use Amazon ECS managed tags for the task.
For more information, see <a
href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html">Tagging
Your Amazon ECS Resources</a> in the <em>Amazon Elastic Container
Service Developer Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecs_run_task_:_enableExecuteCommand">enableExecuteCommand</code></td>
<td><p>Determines whether to use the execute command functionality for
the containers in this task. If <code>true</code>, this enables execute
command functionality on all containers in the task.</p>
<p>If <code>true</code>, then the task definition must have a task role,
or you must provide one as an override.</p></td>
</tr>
<tr class="even">
<td><code id="ecs_run_task_:_group">group</code></td>
<td><p>The name of the task group to associate with the task. The
default value is the family name of the task definition (for example,
<code>family:my-family-name</code>).</p></td>
</tr>
<tr class="odd">
<td><code id="ecs_run_task_:_launchType">launchType</code></td>
<td><p>The infrastructure to run your standalone task on. For more
information, see <a
href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html">Amazon
ECS launch types</a> in the <em>Amazon Elastic Container Service
Developer Guide</em>.</p>
<p>The <code>FARGATE</code> launch type runs your tasks on Fargate
On-Demand infrastructure.</p>
<p>Fargate Spot infrastructure is available for use but a capacity
provider strategy must be used. For more information, see <a
href="https://docs.aws.amazon.com/AmazonECS/latest/userguide/fargate-capacity-providers.html">Fargate
capacity providers</a> in the <em>Amazon ECS User Guide for
Fargate</em>.</p>
<p>The <code>EC2</code> launch type runs your tasks on Amazon EC2
instances registered to your cluster.</p>
<p>The <code>EXTERNAL</code> launch type runs your tasks on your
on-premises server or virtual machine (VM) capacity registered to your
cluster.</p>
<p>A task can use either a launch type or a capacity provider strategy.
If a <code>launchType</code> is specified, the
<code>capacityProviderStrategy</code> parameter must be omitted.</p>
<p>When you use cluster auto scaling, you must specify
<code>capacityProviderStrategy</code> and not
<code>launchType</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_run_task_:_networkConfiguration">networkConfiguration</code></td>
<td><p>The network configuration for the task. This parameter is
required for task definitions that use the <code>awsvpc</code> network
mode to receive their own elastic network interface, and it isn't
supported for other network modes. For more information, see <a
href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html">Task
networking</a> in the <em>Amazon Elastic Container Service Developer
Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code id="ecs_run_task_:_overrides">overrides</code></td>
<td><p>A list of container overrides in JSON format that specify the
name of a container in the specified task definition and the overrides
it should receive. You can override the default command for a container
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
<td><code
id="ecs_run_task_:_placementConstraints">placementConstraints</code></td>
<td><p>An array of placement constraint objects to use for the task. You
can specify up to 10 constraints for each task (including constraints in
the task definition and those specified at runtime).</p></td>
</tr>
<tr class="odd">
<td><code
id="ecs_run_task_:_placementStrategy">placementStrategy</code></td>
<td><p>The placement strategy objects to use for the task. You can
specify a maximum of 5 strategy rules for each task.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_run_task_:_platformVersion">platformVersion</code></td>
<td><p>The platform version the task uses. A platform version is only
specified for tasks hosted on Fargate. If one isn't specified, the
<code>LATEST</code> platform version is used. For more information, see
<a
href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html">Fargate
platform versions</a> in the <em>Amazon Elastic Container Service
Developer Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code id="ecs_run_task_:_propagateTags">propagateTags</code></td>
<td><p>Specifies whether to propagate the tags from the task definition
to the task. If no value is specified, the tags aren't propagated. Tags
can only be propagated to the task during task creation. To add tags to
a task after task creation, use the <code>tag_resource</code> API
action.</p>
<p>An error will be received if you specify the <code>SERVICE</code>
option when running a task.</p></td>
</tr>
<tr class="even">
<td><code id="ecs_run_task_:_referenceId">referenceId</code></td>
<td><p>The reference ID to use for the task. The reference ID can have a
maximum length of 1024 characters.</p></td>
</tr>
<tr class="odd">
<td><code id="ecs_run_task_:_startedBy">startedBy</code></td>
<td><p>An optional tag specified when a task is started. For example, if
you automatically trigger a task to run a batch process job, you could
apply a unique identifier for that job to your task with the
<code>startedBy</code> parameter. You can then identify which tasks
belong to that job by filtering the results of a <code>list_tasks</code>
call with the <code>startedBy</code> value. Up to 36 letters (uppercase
and lowercase), numbers, hyphens (-), and underscores (_) are
allowed.</p>
<p>If a task is started by an Amazon ECS service, then the
<code>startedBy</code> parameter contains the deployment ID of the
service that starts it.</p></td>
</tr>
<tr class="even">
<td><code id="ecs_run_task_:_tags">tags</code></td>
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
<tr class="odd">
<td><code id="ecs_run_task_:_taskDefinition">taskDefinition</code></td>
<td><p>[required] The <code>family</code> and <code>revision</code>
(<code>family:revision</code>) or full ARN of the task definition to
run. If a <code>revision</code> isn't specified, the latest
<code>ACTIVE</code> revision is used.</p>
<p>When you create a policy for run-task, you can set the resource to be
the latest task definition revision, or a specific revision.</p>
<p>The full ARN value must match the value that you specified as the
<code>Resource</code> of the principal's permissions policy.</p>
<p>When you specify the policy resource as the latest task definition
version (by setting the <code>Resource</code> in the policy to
<code>arn:aws:ecs:us-east-1:111122223333:task-definition/TaskFamilyName</code>),
then set this value to
<code>arn:aws:ecs:us-east-1:111122223333:task-definition/TaskFamilyName</code>.</p>
<p>When you specify the policy resource as a specific task definition
version (by setting the <code>Resource</code> in the policy to
<code>arn:aws:ecs:us-east-1:111122223333:task-definition/TaskFamilyName:1</code>
or <code
style="white-space: pre;">⁠arn:aws:ecs:us-east-1:111122223333:task-definition/TaskFamilyName:*⁠</code>),
then set this value to
<code>arn:aws:ecs:us-east-1:111122223333:task-definition/TaskFamilyName:1</code>.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-resources">Policy
Resources for Amazon ECS</a> in the Amazon Elastic Container Service
developer Guide.</p></td>
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

    svc$run_task(
      capacityProviderStrategy = list(
        list(
          capacityProvider = "string",
          weight = 123,
          base = 123
        )
      ),
      cluster = "string",
      count = 123,
      enableECSManagedTags = TRUE|FALSE,
      enableExecuteCommand = TRUE|FALSE,
      group = "string",
      launchType = "EC2"|"FARGATE"|"EXTERNAL",
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
      platformVersion = "string",
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

### Examples

    ## Not run: 
    # This example runs the specified task definition on your default cluster.
    svc$run_task(
      cluster = "default",
      taskDefinition = "sleep360:1"
    )

    ## End(Not run)
