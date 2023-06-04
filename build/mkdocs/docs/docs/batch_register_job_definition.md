<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>batch_register_job_definition</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Registers an Batch job definition

### Description

Registers an Batch job definition.

### Usage

    batch_register_job_definition(jobDefinitionName, type, parameters,
      schedulingPriority, containerProperties, nodeProperties, retryStrategy,
      propagateTags, timeout, tags, platformCapabilities, eksProperties)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="batch_register_job_definition_:_jobDefinitionName">jobDefinitionName</code></td>
<td><p>[required] The name of the job definition to register. It can be
up to 128 letters long. It can contain uppercase and lowercase letters,
numbers, hyphens (-), and underscores (_).</p></td>
</tr>
<tr class="even">
<td><code id="batch_register_job_definition_:_type">type</code></td>
<td><p>[required] The type of job definition. For more information about
multi-node parallel jobs, see <a
href="https://docs.aws.amazon.com/batch/latest/userguide/">Creating a
multi-node parallel job definition</a> in the <em>Batch User
Guide</em>.</p>
<p>If the job is run on Fargate resources, then <code>multinode</code>
isn't supported.</p></td>
</tr>
<tr class="odd">
<td><code
id="batch_register_job_definition_:_parameters">parameters</code></td>
<td><p>Default parameter substitution placeholders to set in the job
definition. Parameters are specified as a key-value pair mapping.
Parameters in a <code>submit_job</code> request override any
corresponding parameter defaults from the job definition.</p></td>
</tr>
<tr class="even">
<td><code
id="batch_register_job_definition_:_schedulingPriority">schedulingPriority</code></td>
<td><p>The scheduling priority for jobs that are submitted with this job
definition. This only affects jobs in job queues with a fair share
policy. Jobs with a higher scheduling priority are scheduled before jobs
with a lower scheduling priority.</p>
<p>The minimum supported value is 0 and the maximum supported value is
9999.</p></td>
</tr>
<tr class="odd">
<td><code
id="batch_register_job_definition_:_containerProperties">containerProperties</code></td>
<td><p>An object with various properties specific to Amazon ECS based
single-node container-based jobs. If the job definition's
<code>type</code> parameter is <code>container</code>, then you must
specify either <code>containerProperties</code> or
<code>nodeProperties</code>. This must not be specified for Amazon EKS
based job definitions.</p>
<p>If the job runs on Fargate resources, then you must not specify
<code>nodeProperties</code>; use only
<code>containerProperties</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="batch_register_job_definition_:_nodeProperties">nodeProperties</code></td>
<td><p>An object with various properties specific to multi-node parallel
jobs. If you specify node properties for a job, it becomes a multi-node
parallel job. For more information, see <a
href="https://docs.aws.amazon.com/batch/latest/userguide/multi-node-parallel-jobs.html">Multi-node
Parallel Jobs</a> in the <em>Batch User Guide</em>. If the job
definition's <code>type</code> parameter is <code>container</code>, then
you must specify either <code>containerProperties</code> or
<code>nodeProperties</code>.</p>
<p>If the job runs on Fargate resources, then you must not specify
<code>nodeProperties</code>; use <code>containerProperties</code>
instead.</p>
<p>If the job runs on Amazon EKS resources, then you must not specify
<code>nodeProperties</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="batch_register_job_definition_:_retryStrategy">retryStrategy</code></td>
<td><p>The retry strategy to use for failed jobs that are submitted with
this job definition. Any retry strategy that's specified during a
<code>submit_job</code> operation overrides the retry strategy defined
here. If a job is terminated due to a timeout, it isn't
retried.</p></td>
</tr>
<tr class="even">
<td><code
id="batch_register_job_definition_:_propagateTags">propagateTags</code></td>
<td><p>Specifies whether to propagate the tags from the job or job
definition to the corresponding Amazon ECS task. If no value is
specified, the tags are not propagated. Tags can only be propagated to
the tasks during task creation. For tags with the same name, job tags
are given priority over job definitions tags. If the total number of
combined tags from the job and job definition is over 50, the job is
moved to the <code>FAILED</code> state.</p>
<p>If the job runs on Amazon EKS resources, then you must not specify
<code>propagateTags</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="batch_register_job_definition_:_timeout">timeout</code></td>
<td><p>The timeout configuration for jobs that are submitted with this
job definition, after which Batch terminates your jobs if they have not
finished. If a job is terminated due to a timeout, it isn't retried. The
minimum value for the timeout is 60 seconds. Any timeout configuration
that's specified during a <code>submit_job</code> operation overrides
the timeout configuration defined here. For more information, see <a
href="https://docs.aws.amazon.com/batch/latest/userguide/job_timeouts.html">Job
Timeouts</a> in the <em>Batch User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code id="batch_register_job_definition_:_tags">tags</code></td>
<td><p>The tags that you apply to the job definition to help you
categorize and organize your resources. Each tag consists of a key and
an optional value. For more information, see <a
href="https://docs.aws.amazon.com/batch/latest/userguide/using-tags.html">Tagging
Amazon Web Services Resources</a> in <em>Batch User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="batch_register_job_definition_:_platformCapabilities">platformCapabilities</code></td>
<td><p>The platform capabilities required by the job definition. If no
value is specified, it defaults to <code>EC2</code>. To run the job on
Fargate resources, specify <code>FARGATE</code>.</p>
<p>If the job runs on Amazon EKS resources, then you must not specify
<code>platformCapabilities</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="batch_register_job_definition_:_eksProperties">eksProperties</code></td>
<td><p>An object with various properties that are specific to Amazon EKS
based jobs. This must not be specified for Amazon ECS based job
definitions.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      jobDefinitionName = "string",
      jobDefinitionArn = "string",
      revision = 123
    )

### Request syntax

    svc$register_job_definition(
      jobDefinitionName = "string",
      type = "container"|"multinode",
      parameters = list(
        "string"
      ),
      schedulingPriority = 123,
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
      propagateTags = TRUE|FALSE,
      timeout = list(
        attemptDurationSeconds = 123
      ),
      tags = list(
        "string"
      ),
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
      )
    )

### Examples

    ## Not run: 
    # This example registers a job definition for a simple container job.
    svc$register_job_definition(
      type = "container",
      containerProperties = list(
        command = list(
          "sleep",
          "10"
        ),
        image = "busybox",
        resourceRequirements = list(
          list(
            type = "MEMORY",
            value = "128"
          ),
          list(
            type = "VCPU",
            value = "1"
          )
        )
      ),
      jobDefinitionName = "sleep10"
    )

    # This demonstrates calling the RegisterJobDefinition action, including
    # tags.
    svc$register_job_definition(
      type = "container",
      containerProperties = list(
        command = list(
          "sleep",
          "30"
        ),
        image = "busybox",
        resourceRequirements = list(
          list(
            type = "MEMORY",
            value = "128"
          ),
          list(
            type = "VCPU",
            value = "1"
          )
        )
      ),
      jobDefinitionName = "sleep30",
      tags = list(
        Department = "Engineering",
        User = "JaneDoe"
      )
    )

    ## End(Not run)
