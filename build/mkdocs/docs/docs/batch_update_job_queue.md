<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>batch_update_job_queue</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a job queue

### Description

Updates a job queue.

### Usage

    batch_update_job_queue(jobQueue, state, schedulingPolicyArn, priority,
      computeEnvironmentOrder)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="batch_update_job_queue_:_jobQueue">jobQueue</code></td>
<td><p>[required] The name or the Amazon Resource Name (ARN) of the job
queue.</p></td>
</tr>
<tr class="even">
<td><code id="batch_update_job_queue_:_state">state</code></td>
<td><p>Describes the queue's ability to accept new jobs. If the job
queue state is <code>ENABLED</code>, it can accept jobs. If the job
queue state is <code>DISABLED</code>, new jobs can't be added to the
queue, but jobs already in the queue can finish.</p></td>
</tr>
<tr class="odd">
<td><code
id="batch_update_job_queue_:_schedulingPolicyArn">schedulingPolicyArn</code></td>
<td><p>Amazon Resource Name (ARN) of the fair share scheduling policy.
Once a job queue is created, the fair share scheduling policy can be
replaced but not removed. The format is
<code>aws:Partition:batch:Region:Account:scheduling-policy/Name </code>.
For example,
<code>aws:aws:batch:us-west-2:123456789012:scheduling-policy/MySchedulingPolicy</code>.</p></td>
</tr>
<tr class="even">
<td><code id="batch_update_job_queue_:_priority">priority</code></td>
<td><p>The priority of the job queue. Job queues with a higher priority
(or a higher integer value for the <code>priority</code> parameter) are
evaluated first when associated with the same compute environment.
Priority is determined in descending order. For example, a job queue
with a priority value of <code>10</code> is given scheduling preference
over a job queue with a priority value of <code>1</code>. All of the
compute environments must be either EC2 (<code>EC2</code> or
<code>SPOT</code>) or Fargate (<code>FARGATE</code> or
<code>FARGATE_SPOT</code>). EC2 and Fargate compute environments can't
be mixed.</p></td>
</tr>
<tr class="odd">
<td><code
id="batch_update_job_queue_:_computeEnvironmentOrder">computeEnvironmentOrder</code></td>
<td><p>Details the set of compute environments mapped to a job queue and
their order relative to each other. This is one of the parameters used
by the job scheduler to determine which compute environment runs a given
job. Compute environments must be in the <code>VALID</code> state before
you can associate them with a job queue. All of the compute environments
must be either EC2 (<code>EC2</code> or <code>SPOT</code>) or Fargate
(<code>FARGATE</code> or <code>FARGATE_SPOT</code>). EC2 and Fargate
compute environments can't be mixed.</p>
<p>All compute environments that are associated with a job queue must
share the same architecture. Batch doesn't support mixing compute
environment architecture types in a single job queue.</p></td>
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

    svc$update_job_queue(
      jobQueue = "string",
      state = "ENABLED"|"DISABLED",
      schedulingPolicyArn = "string",
      priority = 123,
      computeEnvironmentOrder = list(
        list(
          order = 123,
          computeEnvironment = "string"
        )
      )
    )

### Examples

    ## Not run: 
    # This example disables a job queue so that it can be deleted.
    svc$update_job_queue(
      jobQueue = "GPGPU",
      state = "DISABLED"
    )

    ## End(Not run)
