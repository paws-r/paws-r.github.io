<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecs_delete_task_definitions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes one or more task definitions

### Description

Deletes one or more task definitions.

You must deregister a task definition revision before you delete it. For
more information, see `deregister_task_definition`.

When you delete a task definition revision, it is immediately
transitions from the `INACTIVE` to `DELETE_IN_PROGRESS`. Existing tasks
and services that reference a `DELETE_IN_PROGRESS` task definition
revision continue to run without disruption. Existing services that
reference a `DELETE_IN_PROGRESS` task definition revision can still
scale up or down by modifying the service's desired count.

You can't use a `DELETE_IN_PROGRESS` task definition revision to run new
tasks or create new services. You also can't update an existing service
to reference a `DELETE_IN_PROGRESS` task definition revision.

A task definition revision will stay in `DELETE_IN_PROGRESS` status
until all the associated tasks and services have been terminated.

### Usage

    ecs_delete_task_definitions(taskDefinitions)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ecs_delete_task_definitions_:_taskDefinitions">taskDefinitions</code></td>
<td><p>[required] The <code>family</code> and <code>revision</code>
(<code>family:revision</code>) or full Amazon Resource Name (ARN) of the
task definition to delete. You must specify a <code>revision</code>.</p>
<p>You can specify up to 10 task definitions as a comma separated
list.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      taskDefinitions = list(
        list(
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

    svc$delete_task_definitions(
      taskDefinitions = list(
        "string"
      )
    )
