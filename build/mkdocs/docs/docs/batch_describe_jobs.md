<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>batch_describe_jobs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes a list of Batch jobs

### Description

Describes a list of Batch jobs.

### Usage

    batch_describe_jobs(jobs)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="batch_describe_jobs_:_jobs">jobs</code></td>
<td><p>[required] A list of up to 100 job IDs.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      jobs = list(
        list(
          jobArn = "string",
          jobName = "string",
          jobId = "string",
          jobQueue = "string",
          status = "SUBMITTED"|"PENDING"|"RUNNABLE"|"STARTING"|"RUNNING"|"SUCCEEDED"|"FAILED",
          shareIdentifier = "string",
          schedulingPriority = 123,
          attempts = list(
            list(
              container = list(
                containerInstanceArn = "string",
                taskArn = "string",
                exitCode = 123,
                reason = "string",
                logStreamName = "string",
                networkInterfaces = list(
                  list(
                    attachmentId = "string",
                    ipv6Address = "string",
                    privateIpv4Address = "string"
                  )
                )
              ),
              startedAt = 123,
              stoppedAt = 123,
              statusReason = "string"
            )
          ),
          statusReason = "string",
          createdAt = 123,
          retryStrategy = list(
            attempts = 123,
            evaluateOnExit = list(
              list(
                onStatusReason = "string",
                onReason = "string",
                onExitCode = "string",
                action = "RETRY"|"EXIT"
              )
            )
          ),
          startedAt = 123,
          stoppedAt = 123,
          dependsOn = list(
            list(
              jobId = "string",
              type = "N_TO_N"|"SEQUENTIAL"
            )
          ),
          jobDefinition = "string",
          parameters = list(
            "string"
          ),
          container = list(
            image = "string",
            vcpus = 123,
            memory = 123,
            command = list(
              "string"
            ),
            jobRoleArn = "string",
            executionRoleArn = "string",
            volumes = list(
              list(
                host = list(
                  sourcePath = "string"
                ),
                name = "string",
                efsVolumeConfiguration = list(
                  fileSystemId = "string",
                  rootDirectory = "string",
                  transitEncryption = "ENABLED"|"DISABLED",
                  transitEncryptionPort = 123,
                  authorizationConfig = list(
                    accessPointId = "string",
                    iam = "ENABLED"|"DISABLED"
                  )
                )
              )
            ),
            environment = list(
              list(
                name = "string",
                value = "string"
              )
            ),
            mountPoints = list(
              list(
                containerPath = "string",
                readOnly = TRUE|FALSE,
                sourceVolume = "string"
              )
            ),
            readonlyRootFilesystem = TRUE|FALSE,
            ulimits = list(
              list(
                hardLimit = 123,
                name = "string",
                softLimit = 123
              )
            ),
            privileged = TRUE|FALSE,
            user = "string",
            exitCode = 123,
            reason = "string",
            containerInstanceArn = "string",
            taskArn = "string",
            logStreamName = "string",
            instanceType = "string",
            networkInterfaces = list(
              list(
                attachmentId = "string",
                ipv6Address = "string",
                privateIpv4Address = "string"
              )
            ),
            resourceRequirements = list(
              list(
                value = "string",
                type = "GPU"|"VCPU"|"MEMORY"
              )
            ),
            linuxParameters = list(
              devices = list(
                list(
                  hostPath = "string",
                  containerPath = "string",
                  permissions = list(
                    "READ"|"WRITE"|"MKNOD"
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
            logConfiguration = list(
              logDriver = "json-file"|"syslog"|"journald"|"gelf"|"fluentd"|"awslogs"|"splunk",
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
            secrets = list(
              list(
                name = "string",
                valueFrom = "string"
              )
            ),
            networkConfiguration = list(
              assignPublicIp = "ENABLED"|"DISABLED"
            ),
            fargatePlatformConfiguration = list(
              platformVersion = "string"
            ),
            ephemeralStorage = list(
              sizeInGiB = 123
            )
          ),
          nodeDetails = list(
            nodeIndex = 123,
            isMainNode = TRUE|FALSE
          ),
          nodeProperties = list(
            numNodes = 123,
            mainNode = 123,
            nodeRangeProperties = list(
              list(
                targetNodes = "string",
                container = list(
                  image = "string",
                  vcpus = 123,
                  memory = 123,
                  command = list(
                    "string"
                  ),
                  jobRoleArn = "string",
                  executionRoleArn = "string",
                  volumes = list(
                    list(
                      host = list(
                        sourcePath = "string"
                      ),
                      name = "string",
                      efsVolumeConfiguration = list(
                        fileSystemId = "string",
                        rootDirectory = "string",
                        transitEncryption = "ENABLED"|"DISABLED",
                        transitEncryptionPort = 123,
                        authorizationConfig = list(
                          accessPointId = "string",
                          iam = "ENABLED"|"DISABLED"
                        )
                      )
                    )
                  ),
                  environment = list(
                    list(
                      name = "string",
                      value = "string"
                    )
                  ),
                  mountPoints = list(
                    list(
                      containerPath = "string",
                      readOnly = TRUE|FALSE,
                      sourceVolume = "string"
                    )
                  ),
                  readonlyRootFilesystem = TRUE|FALSE,
                  privileged = TRUE|FALSE,
                  ulimits = list(
                    list(
                      hardLimit = 123,
                      name = "string",
                      softLimit = 123
                    )
                  ),
                  user = "string",
                  instanceType = "string",
                  resourceRequirements = list(
                    list(
                      value = "string",
                      type = "GPU"|"VCPU"|"MEMORY"
                    )
                  ),
                  linuxParameters = list(
                    devices = list(
                      list(
                        hostPath = "string",
                        containerPath = "string",
                        permissions = list(
                          "READ"|"WRITE"|"MKNOD"
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
                  logConfiguration = list(
                    logDriver = "json-file"|"syslog"|"journald"|"gelf"|"fluentd"|"awslogs"|"splunk",
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
                  secrets = list(
                    list(
                      name = "string",
                      valueFrom = "string"
                    )
                  ),
                  networkConfiguration = list(
                    assignPublicIp = "ENABLED"|"DISABLED"
                  ),
                  fargatePlatformConfiguration = list(
                    platformVersion = "string"
                  ),
                  ephemeralStorage = list(
                    sizeInGiB = 123
                  )
                )
              )
            )
          ),
          arrayProperties = list(
            statusSummary = list(
              123
            ),
            size = 123,
            index = 123
          ),
          timeout = list(
            attemptDurationSeconds = 123
          ),
          tags = list(
            "string"
          ),
          propagateTags = TRUE|FALSE,
          platformCapabilities = list(
            "EC2"|"FARGATE"
          ),
          eksProperties = list(
            podProperties = list(
              serviceAccountName = "string",
              hostNetwork = TRUE|FALSE,
              dnsPolicy = "string",
              containers = list(
                list(
                  name = "string",
                  image = "string",
                  imagePullPolicy = "string",
                  command = list(
                    "string"
                  ),
                  args = list(
                    "string"
                  ),
                  env = list(
                    list(
                      name = "string",
                      value = "string"
                    )
                  ),
                  resources = list(
                    limits = list(
                      "string"
                    ),
                    requests = list(
                      "string"
                    )
                  ),
                  exitCode = 123,
                  reason = "string",
                  volumeMounts = list(
                    list(
                      name = "string",
                      mountPath = "string",
                      readOnly = TRUE|FALSE
                    )
                  ),
                  securityContext = list(
                    runAsUser = 123,
                    runAsGroup = 123,
                    privileged = TRUE|FALSE,
                    readOnlyRootFilesystem = TRUE|FALSE,
                    runAsNonRoot = TRUE|FALSE
                  )
                )
              ),
              volumes = list(
                list(
                  name = "string",
                  hostPath = list(
                    path = "string"
                  ),
                  emptyDir = list(
                    medium = "string",
                    sizeLimit = "string"
                  ),
                  secret = list(
                    secretName = "string",
                    optional = TRUE|FALSE
                  )
                )
              ),
              podName = "string",
              nodeName = "string",
              metadata = list(
                labels = list(
                  "string"
                )
              )
            )
          ),
          eksAttempts = list(
            list(
              containers = list(
                list(
                  exitCode = 123,
                  reason = "string"
                )
              ),
              podName = "string",
              nodeName = "string",
              startedAt = 123,
              stoppedAt = 123,
              statusReason = "string"
            )
          ),
          isCancelled = TRUE|FALSE,
          isTerminated = TRUE|FALSE
        )
      )
    )

### Request syntax

    svc$describe_jobs(
      jobs = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # This example describes a job with the specified job ID.
    svc$describe_jobs(
      jobs = list(
        "24fa2d7a-64c4-49d2-8b47-f8da4fbde8e9"
      )
    )

    ## End(Not run)
