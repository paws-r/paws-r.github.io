<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecs_register_task_definition</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Registers a new task definition from the supplied family and containerDefinitions

### Description

Registers a new task definition from the supplied `family` and
`containerDefinitions`. Optionally, you can add data volumes to your
containers with the `volumes` parameter. For more information about task
definition parameters and defaults, see [Amazon ECS Task
Definitions](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definitions.html)
in the *Amazon Elastic Container Service Developer Guide*.

You can specify a role for your task with the `taskRoleArn` parameter.
When you specify a role for a task, its containers can then use the
latest versions of the CLI or SDKs to make API requests to the Amazon
Web Services services that are specified in the policy that's associated
with the role. For more information, see [IAM Roles for
Tasks](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-iam-roles.html)
in the *Amazon Elastic Container Service Developer Guide*.

You can specify a Docker networking mode for the containers in your task
definition with the `networkMode` parameter. The available network modes
correspond to those described in [Network
settings](https://docs.docker.com/engine/reference/run/#/network-settings)
in the Docker run reference. If you specify the `awsvpc` network mode,
the task is allocated an elastic network interface, and you must specify
a NetworkConfiguration when you create a service or run a task with the
task definition. For more information, see [Task
Networking](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html)
in the *Amazon Elastic Container Service Developer Guide*.

### Usage

    ecs_register_task_definition(family, taskRoleArn, executionRoleArn,
      networkMode, containerDefinitions, volumes, placementConstraints,
      requiresCompatibilities, cpu, memory, tags, pidMode, ipcMode,
      proxyConfiguration, inferenceAccelerators, ephemeralStorage,
      runtimePlatform)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ecs_register_task_definition_:_family">family</code></td>
<td><p>[required] You must specify a <code>family</code> for a task
definition. You can use it track multiple versions of the same task
definition. The <code>family</code> is used as a name for your task
definition. Up to 255 letters (uppercase and lowercase), numbers,
underscores, and hyphens are allowed.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_register_task_definition_:_taskRoleArn">taskRoleArn</code></td>
<td><p>The short name or full Amazon Resource Name (ARN) of the IAM role
that containers in this task can assume. All containers in this task are
granted the permissions that are specified in this role. For more
information, see <a
href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-iam-roles.html">IAM
Roles for Tasks</a> in the <em>Amazon Elastic Container Service
Developer Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecs_register_task_definition_:_executionRoleArn">executionRoleArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the task execution role that
grants the Amazon ECS container agent permission to make Amazon Web
Services API calls on your behalf. The task execution IAM role is
required depending on the requirements of your task. For more
information, see <a
href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_execution_IAM_role.html">Amazon
ECS task execution IAM role</a> in the <em>Amazon Elastic Container
Service Developer Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_register_task_definition_:_networkMode">networkMode</code></td>
<td><p>The Docker networking mode to use for the containers in the task.
The valid values are <code>none</code>, <code>bridge</code>,
<code>awsvpc</code>, and <code>host</code>. If no network mode is
specified, the default is <code>bridge</code>.</p>
<p>For Amazon ECS tasks on Fargate, the <code>awsvpc</code> network mode
is required. For Amazon ECS tasks on Amazon EC2 Linux instances, any
network mode can be used. For Amazon ECS tasks on Amazon EC2 Windows
instances, <code style="white-space: pre;">⁠&lt;default&gt;⁠</code> or
<code>awsvpc</code> can be used. If the network mode is set to
<code>none</code>, you cannot specify port mappings in your container
definitions, and the tasks containers do not have external connectivity.
The <code>host</code> and <code>awsvpc</code> network modes offer the
highest networking performance for containers because they use the EC2
network stack instead of the virtualized network stack provided by the
<code>bridge</code> mode.</p>
<p>With the <code>host</code> and <code>awsvpc</code> network modes,
exposed container ports are mapped directly to the corresponding host
port (for the <code>host</code> network mode) or the attached elastic
network interface port (for the <code>awsvpc</code> network mode), so
you cannot take advantage of dynamic host port mappings.</p>
<p>When using the <code>host</code> network mode, you should not run
containers using the root user (UID 0). It is considered best practice
to use a non-root user.</p>
<p>If the network mode is <code>awsvpc</code>, the task is allocated an
elastic network interface, and you must specify a NetworkConfiguration
value when you create a service or run a task with the task definition.
For more information, see <a
href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html">Task
Networking</a> in the <em>Amazon Elastic Container Service Developer
Guide</em>.</p>
<p>If the network mode is <code>host</code>, you cannot run multiple
instantiations of the same task on a single container instance when port
mappings are used.</p>
<p>For more information, see <a
href="https://docs.docker.com/engine/reference/run/#network-settings">Network
settings</a> in the <em>Docker run reference</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecs_register_task_definition_:_containerDefinitions">containerDefinitions</code></td>
<td><p>[required] A list of container definitions in JSON format that
describe the different containers that make up your task.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_register_task_definition_:_volumes">volumes</code></td>
<td><p>A list of volume definitions in JSON format that containers in
your task might use.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecs_register_task_definition_:_placementConstraints">placementConstraints</code></td>
<td><p>An array of placement constraint objects to use for the task. You
can specify a maximum of 10 constraints for each task. This limit
includes constraints in the task definition and those specified at
runtime.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_register_task_definition_:_requiresCompatibilities">requiresCompatibilities</code></td>
<td><p>The task launch type that Amazon ECS validates the task
definition against. A client exception is returned if the task
definition doesn't validate against the compatibilities specified. If no
value is specified, the parameter is omitted from the response.</p></td>
</tr>
<tr class="odd">
<td><code id="ecs_register_task_definition_:_cpu">cpu</code></td>
<td><p>The number of CPU units used by the task. It can be expressed as
an integer using CPU units (for example, <code>1024</code>) or as a
string using vCPUs (for example, <code
style="white-space: pre;">⁠1 vCPU⁠</code> or <code
style="white-space: pre;">⁠1 vcpu⁠</code>) in a task definition. String
values are converted to an integer indicating the CPU units when the
task definition is registered.</p>
<p>Task-level CPU and memory parameters are ignored for Windows
containers. We recommend specifying container-level resources for
Windows containers.</p>
<p>If you're using the EC2 launch type, this field is optional.
Supported values are between <code>128</code> CPU units
(<code>0.125</code> vCPUs) and <code>10240</code> CPU units
(<code>10</code> vCPUs). If you do not specify a value, the parameter is
ignored.</p>
<p>If you're using the Fargate launch type, this field is required and
you must use one of the following values, which determines your range of
supported values for the <code>memory</code> parameter:</p>
<p>The CPU units cannot be less than 1 vCPU when you use Windows
containers on Fargate.</p>
<ul>
<li><p>256 (.25 vCPU) - Available <code>memory</code> values: 512 (0.5
GB), 1024 (1 GB), 2048 (2 GB)</p></li>
<li><p>512 (.5 vCPU) - Available <code>memory</code> values: 1024 (1
GB), 2048 (2 GB), 3072 (3 GB), 4096 (4 GB)</p></li>
<li><p>1024 (1 vCPU) - Available <code>memory</code> values: 2048 (2
GB), 3072 (3 GB), 4096 (4 GB), 5120 (5 GB), 6144 (6 GB), 7168 (7 GB),
8192 (8 GB)</p></li>
<li><p>2048 (2 vCPU) - Available <code>memory</code> values: 4096 (4 GB)
and 16384 (16 GB) in increments of 1024 (1 GB)</p></li>
<li><p>4096 (4 vCPU) - Available <code>memory</code> values: 8192 (8 GB)
and 30720 (30 GB) in increments of 1024 (1 GB)</p></li>
<li><p>8192 (8 vCPU) - Available <code>memory</code> values: 16 GB and
60 GB in 4 GB increments</p>
<p>This option requires Linux platform <code
style="white-space: pre;">⁠1.4.0⁠</code> or later.</p></li>
<li><p>16384 (16vCPU) - Available <code>memory</code> values: 32GB and
120 GB in 8 GB increments</p>
<p>This option requires Linux platform <code
style="white-space: pre;">⁠1.4.0⁠</code> or later.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="ecs_register_task_definition_:_memory">memory</code></td>
<td><p>The amount of memory (in MiB) used by the task. It can be
expressed as an integer using MiB (for example ,<code>1024</code>) or as
a string using GB (for example, <code
style="white-space: pre;">⁠1GB⁠</code> or <code
style="white-space: pre;">⁠1 GB⁠</code>) in a task definition. String
values are converted to an integer indicating the MiB when the task
definition is registered.</p>
<p>Task-level CPU and memory parameters are ignored for Windows
containers. We recommend specifying container-level resources for
Windows containers.</p>
<p>If using the EC2 launch type, this field is optional.</p>
<p>If using the Fargate launch type, this field is required and you must
use one of the following values. This determines your range of supported
values for the <code>cpu</code> parameter.</p>
<p>The CPU units cannot be less than 1 vCPU when you use Windows
containers on Fargate.</p>
<ul>
<li><p>512 (0.5 GB), 1024 (1 GB), 2048 (2 GB) - Available
<code>cpu</code> values: 256 (.25 vCPU)</p></li>
<li><p>1024 (1 GB), 2048 (2 GB), 3072 (3 GB), 4096 (4 GB) - Available
<code>cpu</code> values: 512 (.5 vCPU)</p></li>
<li><p>2048 (2 GB), 3072 (3 GB), 4096 (4 GB), 5120 (5 GB), 6144 (6 GB),
7168 (7 GB), 8192 (8 GB) - Available <code>cpu</code> values: 1024 (1
vCPU)</p></li>
<li><p>Between 4096 (4 GB) and 16384 (16 GB) in increments of 1024 (1
GB) - Available <code>cpu</code> values: 2048 (2 vCPU)</p></li>
<li><p>Between 8192 (8 GB) and 30720 (30 GB) in increments of 1024 (1
GB) - Available <code>cpu</code> values: 4096 (4 vCPU)</p></li>
<li><p>Between 16 GB and 60 GB in 4 GB increments - Available
<code>cpu</code> values: 8192 (8 vCPU)</p>
<p>This option requires Linux platform <code
style="white-space: pre;">⁠1.4.0⁠</code> or later.</p></li>
<li><p>Between 32GB and 120 GB in 8 GB increments - Available
<code>cpu</code> values: 16384 (16 vCPU)</p>
<p>This option requires Linux platform <code
style="white-space: pre;">⁠1.4.0⁠</code> or later.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code id="ecs_register_task_definition_:_tags">tags</code></td>
<td><p>The metadata that you apply to the task definition to help you
categorize and organize them. Each tag consists of a key and an optional
value. You define both of them.</p>
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
id="ecs_register_task_definition_:_pidMode">pidMode</code></td>
<td><p>The process namespace to use for the containers in the task. The
valid values are <code>host</code> or <code>task</code>. If
<code>host</code> is specified, then all containers within the tasks
that specified the <code>host</code> PID mode on the same container
instance share the same process namespace with the host Amazon EC2
instance. If <code>task</code> is specified, all containers within the
specified task share the same process namespace. If no value is
specified, the default is a private namespace. For more information, see
<a
href="https://docs.docker.com/engine/reference/run/#pid-settings---pid">PID
settings</a> in the <em>Docker run reference</em>.</p>
<p>If the <code>host</code> PID mode is used, be aware that there is a
heightened risk of undesired process namespace expose. For more
information, see <a
href="https://docs.docker.com/engine/security/">Docker security</a>.</p>
<p>This parameter is not supported for Windows containers or tasks run
on Fargate.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecs_register_task_definition_:_ipcMode">ipcMode</code></td>
<td><p>The IPC resource namespace to use for the containers in the task.
The valid values are <code>host</code>, <code>task</code>, or
<code>none</code>. If <code>host</code> is specified, then all
containers within the tasks that specified the <code>host</code> IPC
mode on the same container instance share the same IPC resources with
the host Amazon EC2 instance. If <code>task</code> is specified, all
containers within the specified task share the same IPC resources. If
<code>none</code> is specified, then IPC resources within the containers
of a task are private and not shared with other containers in a task or
on the container instance. If no value is specified, then the IPC
resource namespace sharing depends on the Docker daemon setting on the
container instance. For more information, see <a
href="https://docs.docker.com/engine/reference/run/#ipc-settings---ipc">IPC
settings</a> in the <em>Docker run reference</em>.</p>
<p>If the <code>host</code> IPC mode is used, be aware that there is a
heightened risk of undesired IPC namespace expose. For more information,
see <a href="https://docs.docker.com/engine/security/">Docker
security</a>.</p>
<p>If you are setting namespaced kernel parameters using
<code>systemControls</code> for the containers in the task, the
following will apply to your IPC resource namespace. For more
information, see <a
href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html">System
Controls</a> in the <em>Amazon Elastic Container Service Developer
Guide</em>.</p>
<ul>
<li><p>For tasks that use the <code>host</code> IPC mode, IPC namespace
related <code>systemControls</code> are not supported.</p></li>
<li><p>For tasks that use the <code>task</code> IPC mode, IPC namespace
related <code>systemControls</code> will apply to all containers within
a task.</p></li>
</ul>
<p>This parameter is not supported for Windows containers or tasks run
on Fargate.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_register_task_definition_:_proxyConfiguration">proxyConfiguration</code></td>
<td><p>The configuration details for the App Mesh proxy.</p>
<p>For tasks hosted on Amazon EC2 instances, the container instances
require at least version <code style="white-space: pre;">⁠1.26.0⁠</code>
of the container agent and at least version <code
style="white-space: pre;">⁠1.26.0-1⁠</code> of the <code>ecs-init</code>
package to use a proxy configuration. If your container instances are
launched from the Amazon ECS-optimized AMI version <code>20190301</code>
or later, then they contain the required versions of the container agent
and <code>ecs-init</code>. For more information, see <a
href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html#ecs-optimized-ami-linux-releasenotes">Amazon
ECS-optimized AMI versions</a> in the <em>Amazon Elastic Container
Service Developer Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecs_register_task_definition_:_inferenceAccelerators">inferenceAccelerators</code></td>
<td><p>The Elastic Inference accelerators to use for the containers in
the task.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_register_task_definition_:_ephemeralStorage">ephemeralStorage</code></td>
<td><p>The amount of ephemeral storage to allocate for the task. This
parameter is used to expand the total amount of ephemeral storage
available, beyond the default amount, for tasks hosted on Fargate. For
more information, see <a
href="https://docs.aws.amazon.com/AmazonECS/latest/userguide/using_data_volumes.html">Fargate
task storage</a> in the <em>Amazon ECS User Guide for Fargate</em>.</p>
<p>For tasks using the Fargate launch type, the task requires the
following platforms:</p>
<ul>
<li><p>Linux platform version <code
style="white-space: pre;">⁠1.4.0⁠</code> or later.</p></li>
<li><p>Windows platform version <code
style="white-space: pre;">⁠1.0.0⁠</code> or later.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="ecs_register_task_definition_:_runtimePlatform">runtimePlatform</code></td>
<td><p>The operating system that your tasks definitions run on. A
platform family is specified only for tasks using the Fargate launch
type.</p>
<p>When you specify a task definition in a service, this value must
match the <code>runtimePlatform</code> value of the service.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      taskDefinition = list(
        taskDefinitionArn = "string",
        containerDefinitions = list(
          list(
            name = "string",
            image = "string",
            repositoryCredentials = list(
              credentialsParameter = "string"
            ),
            cpu = 123,
            memory = 123,
            memoryReservation = 123,
            links = list(
              "string"
            ),
            portMappings = list(
              list(
                containerPort = 123,
                hostPort = 123,
                protocol = "tcp"|"udp",
                name = "string",
                appProtocol = "http"|"http2"|"grpc",
                containerPortRange = "string"
              )
            ),
            essential = TRUE|FALSE,
            entryPoint = list(
              "string"
            ),
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
            mountPoints = list(
              list(
                sourceVolume = "string",
                containerPath = "string",
                readOnly = TRUE|FALSE
              )
            ),
            volumesFrom = list(
              list(
                sourceContainer = "string",
                readOnly = TRUE|FALSE
              )
            ),
            linuxParameters = list(
              capabilities = list(
                add = list(
                  "string"
                ),
                drop = list(
                  "string"
                )
              ),
              devices = list(
                list(
                  hostPath = "string",
                  containerPath = "string",
                  permissions = list(
                    "read"|"write"|"mknod"
                  )
                )
              ),
              initProcessEnabled = TRUE|FALSE,
              sharedMemorySize = 123,
              tmpfs = list(
                list(
                  containerPath = "string",
                  size = 123,
                  mountOptions = list(
                    "string"
                  )
                )
              ),
              maxSwap = 123,
              swappiness = 123
            ),
            secrets = list(
              list(
                name = "string",
                valueFrom = "string"
              )
            ),
            dependsOn = list(
              list(
                containerName = "string",
                condition = "START"|"COMPLETE"|"SUCCESS"|"HEALTHY"
              )
            ),
            startTimeout = 123,
            stopTimeout = 123,
            hostname = "string",
            user = "string",
            workingDirectory = "string",
            disableNetworking = TRUE|FALSE,
            privileged = TRUE|FALSE,
            readonlyRootFilesystem = TRUE|FALSE,
            dnsServers = list(
              "string"
            ),
            dnsSearchDomains = list(
              "string"
            ),
            extraHosts = list(
              list(
                hostname = "string",
                ipAddress = "string"
              )
            ),
            dockerSecurityOptions = list(
              "string"
            ),
            interactive = TRUE|FALSE,
            pseudoTerminal = TRUE|FALSE,
            dockerLabels = list(
              "string"
            ),
            ulimits = list(
              list(
                name = "core"|"cpu"|"data"|"fsize"|"locks"|"memlock"|"msgqueue"|"nice"|"nofile"|"nproc"|"rss"|"rtprio"|"rttime"|"sigpending"|"stack",
                softLimit = 123,
                hardLimit = 123
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
            ),
            healthCheck = list(
              command = list(
                "string"
              ),
              interval = 123,
              timeout = 123,
              retries = 123,
              startPeriod = 123
            ),
            systemControls = list(
              list(
                namespace = "string",
                value = "string"
              )
            ),
            resourceRequirements = list(
              list(
                value = "string",
                type = "GPU"|"InferenceAccelerator"
              )
            ),
            firelensConfiguration = list(
              type = "fluentd"|"fluentbit",
              options = list(
                "string"
              )
            )
          )
        ),
        family = "string",
        taskRoleArn = "string",
        executionRoleArn = "string",
        networkMode = "bridge"|"host"|"awsvpc"|"none",
        revision = 123,
        volumes = list(
          list(
            name = "string",
            host = list(
              sourcePath = "string"
            ),
            dockerVolumeConfiguration = list(
              scope = "task"|"shared",
              autoprovision = TRUE|FALSE,
              driver = "string",
              driverOpts = list(
                "string"
              ),
              labels = list(
                "string"
              )
            ),
            efsVolumeConfiguration = list(
              fileSystemId = "string",
              rootDirectory = "string",
              transitEncryption = "ENABLED"|"DISABLED",
              transitEncryptionPort = 123,
              authorizationConfig = list(
                accessPointId = "string",
                iam = "ENABLED"|"DISABLED"
              )
            ),
            fsxWindowsFileServerVolumeConfiguration = list(
              fileSystemId = "string",
              rootDirectory = "string",
              authorizationConfig = list(
                credentialsParameter = "string",
                domain = "string"
              )
            )
          )
        ),
        status = "ACTIVE"|"INACTIVE"|"DELETE_IN_PROGRESS",
        requiresAttributes = list(
          list(
            name = "string",
            value = "string",
            targetType = "container-instance",
            targetId = "string"
          )
        ),
        placementConstraints = list(
          list(
            type = "memberOf",
            expression = "string"
          )
        ),
        compatibilities = list(
          "EC2"|"FARGATE"|"EXTERNAL"
        ),
        runtimePlatform = list(
          cpuArchitecture = "X86_64"|"ARM64",
          operatingSystemFamily = "WINDOWS_SERVER_2019_FULL"|"WINDOWS_SERVER_2019_CORE"|"WINDOWS_SERVER_2016_FULL"|"WINDOWS_SERVER_2004_CORE"|"WINDOWS_SERVER_2022_CORE"|"WINDOWS_SERVER_2022_FULL"|"WINDOWS_SERVER_20H2_CORE"|"LINUX"
        ),
        requiresCompatibilities = list(
          "EC2"|"FARGATE"|"EXTERNAL"
        ),
        cpu = "string",
        memory = "string",
        inferenceAccelerators = list(
          list(
            deviceName = "string",
            deviceType = "string"
          )
        ),
        pidMode = "host"|"task",
        ipcMode = "host"|"task"|"none",
        proxyConfiguration = list(
          type = "APPMESH",
          containerName = "string",
          properties = list(
            list(
              name = "string",
              value = "string"
            )
          )
        ),
        registeredAt = as.POSIXct(
          "2015-01-01"
        ),
        deregisteredAt = as.POSIXct(
          "2015-01-01"
        ),
        registeredBy = "string",
        ephemeralStorage = list(
          sizeInGiB = 123
        )
      ),
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )

### Request syntax

    svc$register_task_definition(
      family = "string",
      taskRoleArn = "string",
      executionRoleArn = "string",
      networkMode = "bridge"|"host"|"awsvpc"|"none",
      containerDefinitions = list(
        list(
          name = "string",
          image = "string",
          repositoryCredentials = list(
            credentialsParameter = "string"
          ),
          cpu = 123,
          memory = 123,
          memoryReservation = 123,
          links = list(
            "string"
          ),
          portMappings = list(
            list(
              containerPort = 123,
              hostPort = 123,
              protocol = "tcp"|"udp",
              name = "string",
              appProtocol = "http"|"http2"|"grpc",
              containerPortRange = "string"
            )
          ),
          essential = TRUE|FALSE,
          entryPoint = list(
            "string"
          ),
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
          mountPoints = list(
            list(
              sourceVolume = "string",
              containerPath = "string",
              readOnly = TRUE|FALSE
            )
          ),
          volumesFrom = list(
            list(
              sourceContainer = "string",
              readOnly = TRUE|FALSE
            )
          ),
          linuxParameters = list(
            capabilities = list(
              add = list(
                "string"
              ),
              drop = list(
                "string"
              )
            ),
            devices = list(
              list(
                hostPath = "string",
                containerPath = "string",
                permissions = list(
                  "read"|"write"|"mknod"
                )
              )
            ),
            initProcessEnabled = TRUE|FALSE,
            sharedMemorySize = 123,
            tmpfs = list(
              list(
                containerPath = "string",
                size = 123,
                mountOptions = list(
                  "string"
                )
              )
            ),
            maxSwap = 123,
            swappiness = 123
          ),
          secrets = list(
            list(
              name = "string",
              valueFrom = "string"
            )
          ),
          dependsOn = list(
            list(
              containerName = "string",
              condition = "START"|"COMPLETE"|"SUCCESS"|"HEALTHY"
            )
          ),
          startTimeout = 123,
          stopTimeout = 123,
          hostname = "string",
          user = "string",
          workingDirectory = "string",
          disableNetworking = TRUE|FALSE,
          privileged = TRUE|FALSE,
          readonlyRootFilesystem = TRUE|FALSE,
          dnsServers = list(
            "string"
          ),
          dnsSearchDomains = list(
            "string"
          ),
          extraHosts = list(
            list(
              hostname = "string",
              ipAddress = "string"
            )
          ),
          dockerSecurityOptions = list(
            "string"
          ),
          interactive = TRUE|FALSE,
          pseudoTerminal = TRUE|FALSE,
          dockerLabels = list(
            "string"
          ),
          ulimits = list(
            list(
              name = "core"|"cpu"|"data"|"fsize"|"locks"|"memlock"|"msgqueue"|"nice"|"nofile"|"nproc"|"rss"|"rtprio"|"rttime"|"sigpending"|"stack",
              softLimit = 123,
              hardLimit = 123
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
          ),
          healthCheck = list(
            command = list(
              "string"
            ),
            interval = 123,
            timeout = 123,
            retries = 123,
            startPeriod = 123
          ),
          systemControls = list(
            list(
              namespace = "string",
              value = "string"
            )
          ),
          resourceRequirements = list(
            list(
              value = "string",
              type = "GPU"|"InferenceAccelerator"
            )
          ),
          firelensConfiguration = list(
            type = "fluentd"|"fluentbit",
            options = list(
              "string"
            )
          )
        )
      ),
      volumes = list(
        list(
          name = "string",
          host = list(
            sourcePath = "string"
          ),
          dockerVolumeConfiguration = list(
            scope = "task"|"shared",
            autoprovision = TRUE|FALSE,
            driver = "string",
            driverOpts = list(
              "string"
            ),
            labels = list(
              "string"
            )
          ),
          efsVolumeConfiguration = list(
            fileSystemId = "string",
            rootDirectory = "string",
            transitEncryption = "ENABLED"|"DISABLED",
            transitEncryptionPort = 123,
            authorizationConfig = list(
              accessPointId = "string",
              iam = "ENABLED"|"DISABLED"
            )
          ),
          fsxWindowsFileServerVolumeConfiguration = list(
            fileSystemId = "string",
            rootDirectory = "string",
            authorizationConfig = list(
              credentialsParameter = "string",
              domain = "string"
            )
          )
        )
      ),
      placementConstraints = list(
        list(
          type = "memberOf",
          expression = "string"
        )
      ),
      requiresCompatibilities = list(
        "EC2"|"FARGATE"|"EXTERNAL"
      ),
      cpu = "string",
      memory = "string",
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      ),
      pidMode = "host"|"task",
      ipcMode = "host"|"task"|"none",
      proxyConfiguration = list(
        type = "APPMESH",
        containerName = "string",
        properties = list(
          list(
            name = "string",
            value = "string"
          )
        )
      ),
      inferenceAccelerators = list(
        list(
          deviceName = "string",
          deviceType = "string"
        )
      ),
      ephemeralStorage = list(
        sizeInGiB = 123
      ),
      runtimePlatform = list(
        cpuArchitecture = "X86_64"|"ARM64",
        operatingSystemFamily = "WINDOWS_SERVER_2019_FULL"|"WINDOWS_SERVER_2019_CORE"|"WINDOWS_SERVER_2016_FULL"|"WINDOWS_SERVER_2004_CORE"|"WINDOWS_SERVER_2022_CORE"|"WINDOWS_SERVER_2022_FULL"|"WINDOWS_SERVER_20H2_CORE"|"LINUX"
      )
    )

### Examples

    ## Not run: 
    # This example registers a task definition to the specified family.
    svc$register_task_definition(
      containerDefinitions = list(
        list(
          name = "sleep",
          command = list(
            "sleep",
            "360"
          ),
          cpu = 10L,
          essential = TRUE,
          image = "busybox",
          memory = 10L
        )
      ),
      family = "sleep360",
      taskRoleArn = "",
      volumes = list()
    )

    ## End(Not run)
