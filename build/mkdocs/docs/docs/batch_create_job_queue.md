<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>batch_create_job_queue</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an Batch job queue

### Description

Creates an Batch job queue. When you create a job queue, you associate
one or more compute environments to the queue and assign an order of
preference for the compute environments.

You also set a priority to the job queue that determines the order that
the Batch scheduler places jobs onto its associated compute
environments. For example, if a compute environment is associated with
more than one job queue, the job queue with a higher priority is given
preference for scheduling jobs to that compute environment.

### Usage

    batch_create_job_queue(jobQueueName, state, schedulingPolicyArn,
      priority, computeEnvironmentOrder, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="batch_create_job_queue_:_jobQueueName">jobQueueName</code></td>
<td><p>[required] The name of the job queue. It can be up to 128 letters
long. It can contain uppercase and lowercase letters, numbers, hyphens
(-), and underscores (_).</p></td>
</tr>
<tr class="even">
<td><code id="batch_create_job_queue_:_state">state</code></td>
<td><p>The state of the job queue. If the job queue state is
<code>ENABLED</code>, it is able to accept jobs. If the job queue state
is <code>DISABLED</code>, new jobs can't be added to the queue, but jobs
already in the queue can finish.</p></td>
</tr>
<tr class="odd">
<td><code
id="batch_create_job_queue_:_schedulingPolicyArn">schedulingPolicyArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the fair share scheduling
policy. If this parameter is specified, the job queue uses a fair share
scheduling policy. If this parameter isn't specified, the job queue uses
a first in, first out (FIFO) scheduling policy. After a job queue is
created, you can replace but can't remove the fair share scheduling
policy. The format is
<code>aws:Partition:batch:Region:Account:scheduling-policy/Name </code>.
An example is
<code>aws:aws:batch:us-west-2:123456789012:scheduling-policy/MySchedulingPolicy</code>.</p></td>
</tr>
<tr class="even">
<td><code id="batch_create_job_queue_:_priority">priority</code></td>
<td><p>[required] The priority of the job queue. Job queues with a
higher priority (or a higher integer value for the <code>priority</code>
parameter) are evaluated first when associated with the same compute
environment. Priority is determined in descending order. For example, a
job queue with a priority value of <code>10</code> is given scheduling
preference over a job queue with a priority value of <code>1</code>. All
of the compute environments must be either EC2 (<code>EC2</code> or
<code>SPOT</code>) or Fargate (<code>FARGATE</code> or
<code>FARGATE_SPOT</code>); EC2 and Fargate compute environments can't
be mixed.</p></td>
</tr>
<tr class="odd">
<td><code
id="batch_create_job_queue_:_computeEnvironmentOrder">computeEnvironmentOrder</code></td>
<td><p>[required] The set of compute environments mapped to a job queue
and their order relative to each other. The job scheduler uses this
parameter to determine which compute environment runs a specific job.
Compute environments must be in the <code>VALID</code> state before you
can associate them with a job queue. You can associate up to three
compute environments with a job queue. All of the compute environments
must be either EC2 (<code>EC2</code> or <code>SPOT</code>) or Fargate
(<code>FARGATE</code> or <code>FARGATE_SPOT</code>); EC2 and Fargate
compute environments can't be mixed.</p>
<p>All compute environments that are associated with a job queue must
share the same architecture. Batch doesn't support mixing compute
environment architecture types in a single job queue.</p></td>
</tr>
<tr class="even">
<td><code id="batch_create_job_queue_:_tags">tags</code></td>
<td><p>The tags that you apply to the job queue to help you categorize
and organize your resources. Each tag consists of a key and an optional
value. For more information, see <a
href="https://docs.aws.amazon.com/batch/latest/userguide/using-tags.html">Tagging
your Batch resources</a> in <em>Batch User Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      jobQueueName = "string",
      jobQueueArn = "string"
    )

### Request syntax

    svc$create_job_queue(
      jobQueueName = "string",
      state = "ENABLED"|"DISABLED",
      schedulingPolicyArn = "string",
      priority = 123,
      computeEnvironmentOrder = list(
        list(
          order = 123,
          computeEnvironment = "string"
        )
      ),
      tags = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # This example creates a job queue called LowPriority that uses the M4Spot
    # compute environment.
    svc$create_job_queue(
      computeEnvironmentOrder = list(
        list(
          computeEnvironment = "M4Spot",
          order = 1L
        )
      ),
      jobQueueName = "LowPriority",
      priority = 1L,
      state = "ENABLED"
    )

    # This example creates a job queue called HighPriority that uses the
    # C4OnDemand compute environment with an order of 1 and the M4Spot compute
    # environment with an order of 2.
    svc$create_job_queue(
      computeEnvironmentOrder = list(
        list(
          computeEnvironment = "C4OnDemand",
          order = 1L
        ),
        list(
          computeEnvironment = "M4Spot",
          order = 2L
        )
      ),
      jobQueueName = "HighPriority",
      priority = 10L,
      state = "ENABLED"
    )

    ## End(Not run)
