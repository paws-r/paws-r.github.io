<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>batch_submit_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Submits an Batch job from a job definition

### Description

Submits an Batch job from a job definition. Parameters that are
specified during `submit_job` override parameters defined in the job
definition. vCPU and memory requirements that are specified in the
`resourceRequirements` objects in the job definition are the exception.
They can't be overridden this way using the `memory` and `vcpus`
parameters. Rather, you must specify updates to job definition
parameters in a `resourceRequirements` object that's included in the
`containerOverrides` parameter.

Job queues with a scheduling policy are limited to 500 active fair share
identifiers at a time.

Jobs that run on Fargate resources can't be guaranteed to run for more
than 14 days. This is because, after 14 days, Fargate resources might
become unavailable and job might be terminated.

### Usage

    batch_submit_job(jobName, jobQueue, shareIdentifier,
      schedulingPriorityOverride, arrayProperties, dependsOn, jobDefinition,
      parameters, containerOverrides, nodeOverrides, retryStrategy,
      propagateTags, timeout, tags, eksPropertiesOverride)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="batch_submit_job_:_jobName">jobName</code></td>
<td><p>[required] The name of the job. It can be up to 128 letters long.
The first character must be alphanumeric, can contain uppercase and
lowercase letters, numbers, hyphens (-), and underscores (_).</p></td>
</tr>
<tr class="even">
<td><code id="batch_submit_job_:_jobQueue">jobQueue</code></td>
<td><p>[required] The job queue where the job is submitted. You can
specify either the name or the Amazon Resource Name (ARN) of the
queue.</p></td>
</tr>
<tr class="odd">
<td><code
id="batch_submit_job_:_shareIdentifier">shareIdentifier</code></td>
<td><p>The share identifier for the job. If the job queue doesn't have a
scheduling policy, then this parameter must not be specified. If the job
queue has a scheduling policy, then this parameter must be
specified.</p></td>
</tr>
<tr class="even">
<td><code
id="batch_submit_job_:_schedulingPriorityOverride">schedulingPriorityOverride</code></td>
<td><p>The scheduling priority for the job. This only affects jobs in
job queues with a fair share policy. Jobs with a higher scheduling
priority are scheduled before jobs with a lower scheduling priority.
This overrides any scheduling priority in the job definition.</p>
<p>The minimum supported value is 0 and the maximum supported value is
9999.</p></td>
</tr>
<tr class="odd">
<td><code
id="batch_submit_job_:_arrayProperties">arrayProperties</code></td>
<td><p>The array properties for the submitted job, such as the size of
the array. The array size can be between 2 and 10,000. If you specify
array properties for a job, it becomes an array job. For more
information, see <a
href="https://docs.aws.amazon.com/batch/latest/userguide/array_jobs.html">Array
Jobs</a> in the <em>Batch User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code id="batch_submit_job_:_dependsOn">dependsOn</code></td>
<td><p>A list of dependencies for the job. A job can depend upon a
maximum of 20 jobs. You can specify a <code>SEQUENTIAL</code> type
dependency without specifying a job ID for array jobs so that each child
array job completes sequentially, starting at index 0. You can also
specify an <code>N_TO_N</code> type dependency with a job ID for array
jobs. In that case, each index child of this job must wait for the
corresponding index child of each dependency to complete before it can
begin.</p></td>
</tr>
<tr class="odd">
<td><code
id="batch_submit_job_:_jobDefinition">jobDefinition</code></td>
<td><p>[required] The job definition used by this job. This value can be
one of <code>definition-name</code>,
<code>definition-name:revision</code>, or the Amazon Resource Name (ARN)
for the job definition, with or without the revision
(<code>arn:aws:batch:region:account:job-definition/definition-name:revision </code>,
or
<code>arn:aws:batch:region:account:job-definition/definition-name </code>).</p>
<p>If the revision is not specified, then the latest active revision is
used.</p></td>
</tr>
<tr class="even">
<td><code id="batch_submit_job_:_parameters">parameters</code></td>
<td><p>Additional parameters passed to the job that replace parameter
substitution placeholders that are set in the job definition. Parameters
are specified as a key and value pair mapping. Parameters in a
<code>submit_job</code> request override any corresponding parameter
defaults from the job definition.</p></td>
</tr>
<tr class="odd">
<td><code
id="batch_submit_job_:_containerOverrides">containerOverrides</code></td>
<td><p>An object with various properties that override the defaults for
the job definition that specify the name of a container in the specified
job definition and the overrides it should receive. You can override the
default command for a container, which is specified in the job
definition or the Docker image, with a <code>command</code> override.
You can also override existing environment variables on a container or
add new environment variables to it with an <code>environment</code>
override.</p></td>
</tr>
<tr class="even">
<td><code
id="batch_submit_job_:_nodeOverrides">nodeOverrides</code></td>
<td><p>A list of node overrides in JSON format that specify the node
range to target and the container overrides for that node range.</p>
<p>This parameter isn't applicable to jobs that are running on Fargate
resources; use <code>containerOverrides</code> instead.</p></td>
</tr>
<tr class="odd">
<td><code
id="batch_submit_job_:_retryStrategy">retryStrategy</code></td>
<td><p>The retry strategy to use for failed jobs from this
<code>submit_job</code> operation. When a retry strategy is specified
here, it overrides the retry strategy defined in the job
definition.</p></td>
</tr>
<tr class="even">
<td><code
id="batch_submit_job_:_propagateTags">propagateTags</code></td>
<td><p>Specifies whether to propagate the tags from the job or job
definition to the corresponding Amazon ECS task. If no value is
specified, the tags aren't propagated. Tags can only be propagated to
the tasks during task creation. For tags with the same name, job tags
are given priority over job definitions tags. If the total number of
combined tags from the job and job definition is over 50, the job is
moved to the <code>FAILED</code> state. When specified, this overrides
the tag propagation setting in the job definition.</p></td>
</tr>
<tr class="odd">
<td><code id="batch_submit_job_:_timeout">timeout</code></td>
<td><p>The timeout configuration for this <code>submit_job</code>
operation. You can specify a timeout duration after which Batch
terminates your jobs if they haven't finished. If a job is terminated
due to a timeout, it isn't retried. The minimum value for the timeout is
60 seconds. This configuration overrides any timeout configuration
specified in the job definition. For array jobs, child jobs have the
same timeout configuration as the parent job. For more information, see
<a
href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/">Job
Timeouts</a> in the <em>Amazon Elastic Container Service Developer
Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code id="batch_submit_job_:_tags">tags</code></td>
<td><p>The tags that you apply to the job request to help you categorize
and organize your resources. Each tag consists of a key and an optional
value. For more information, see <a
href="https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html">Tagging
Amazon Web Services Resources</a> in <em>Amazon Web Services General
Reference</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="batch_submit_job_:_eksPropertiesOverride">eksPropertiesOverride</code></td>
<td><p>An object that can only be specified for jobs that are run on
Amazon EKS resources with various properties that override defaults for
the job definition.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      jobArn = "string",
      jobName = "string",
      jobId = "string"
    )

### Request syntax

    svc$submit_job(
      jobName = "string",
      jobQueue = "string",
      shareIdentifier = "string",
      schedulingPriorityOverride = 123,
      arrayProperties = list(
        size = 123
      ),
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
      containerOverrides = list(
        vcpus = 123,
        memory = 123,
        command = list(
          "string"
        ),
        instanceType = "string",
        environment = list(
          list(
            name = "string",
            value = "string"
          )
        ),
        resourceRequirements = list(
          list(
            value = "string",
            type = "GPU"|"VCPU"|"MEMORY"
          )
        )
      ),
      nodeOverrides = list(
        numNodes = 123,
        nodePropertyOverrides = list(
          list(
            targetNodes = "string",
            containerOverrides = list(
              vcpus = 123,
              memory = 123,
              command = list(
                "string"
              ),
              instanceType = "string",
              environment = list(
                list(
                  name = "string",
                  value = "string"
                )
              ),
              resourceRequirements = list(
                list(
                  value = "string",
                  type = "GPU"|"VCPU"|"MEMORY"
                )
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
      eksPropertiesOverride = list(
        podProperties = list(
          containers = list(
            list(
              image = "string",
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
    # This example submits a simple container job called example to the
    # HighPriority job queue.
    svc$submit_job(
      jobDefinition = "sleep60",
      jobName = "example",
      jobQueue = "HighPriority"
    )

    ## End(Not run)
