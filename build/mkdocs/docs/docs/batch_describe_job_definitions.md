<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>batch_describe_job_definitions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes a list of job definitions

### Description

Describes a list of job definitions. You can specify a `status` (such as
`ACTIVE`) to only return job definitions that match that status.

### Usage

    batch_describe_job_definitions(jobDefinitions, maxResults,
      jobDefinitionName, status, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="batch_describe_job_definitions_:_jobDefinitions">jobDefinitions</code></td>
<td><p>A list of up to 100 job definitions. Each entry in the list can
either be an ARN in the format <code
style="white-space: pre;">⁠arn:aws:batch:${Region}:${Account}:job-definition/${JobDefinitionName}:${Revision}⁠</code>
or a short version using the form <code
style="white-space: pre;">⁠${JobDefinitionName}:${Revision}⁠</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="batch_describe_job_definitions_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results returned by
<code>describe_job_definitions</code> in paginated output. When this
parameter is used, <code>describe_job_definitions</code> only returns
<code>maxResults</code> results in a single page and a
<code>nextToken</code> response element. The remaining results of the
initial request can be seen by sending another
<code>describe_job_definitions</code> request with the returned
<code>nextToken</code> value. This value can be between 1 and 100. If
this parameter isn't used, then <code>describe_job_definitions</code>
returns up to 100 results and a <code>nextToken</code> value if
applicable.</p></td>
</tr>
<tr class="odd">
<td><code
id="batch_describe_job_definitions_:_jobDefinitionName">jobDefinitionName</code></td>
<td><p>The name of the job definition to describe.</p></td>
</tr>
<tr class="even">
<td><code
id="batch_describe_job_definitions_:_status">status</code></td>
<td><p>The status used to filter job definitions.</p></td>
</tr>
<tr class="odd">
<td><code
id="batch_describe_job_definitions_:_nextToken">nextToken</code></td>
<td><p>The <code>nextToken</code> value returned from a previous
paginated <code>describe_job_definitions</code> request where
<code>maxResults</code> was used and the results exceeded the value of
that parameter. Pagination continues from the end of the previous
results that returned the <code>nextToken</code> value. This value is
<code>null</code> when there are no more results to return.</p>
<p>Treat this token as an opaque identifier that's only used to retrieve
the next items in a list and not for other programmatic
purposes.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      jobDefinitions = list(
        list(
          jobDefinitionName = "string",
          jobDefinitionArn = "string",
          revision = 123,
          status = "string",
          type = "string",
          schedulingPriority = 123,
          parameters = list(
            "string"
          ),
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
          containerProperties = list(
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
          ),
          timeout = list(
            attemptDurationSeconds = 123
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
              metadata = list(
                labels = list(
                  "string"
                )
              )
            )
          ),
          containerOrchestrationType = "ECS"|"EKS"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$describe_job_definitions(
      jobDefinitions = list(
        "string"
      ),
      maxResults = 123,
      jobDefinitionName = "string",
      status = "string",
      nextToken = "string"
    )

### Examples

    ## Not run: 
    # This example describes all of your active job definitions.
    svc$describe_job_definitions(
      status = "ACTIVE"
    )

    ## End(Not run)
