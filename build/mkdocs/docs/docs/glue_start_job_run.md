<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_start_job_run</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts a job run using a job definition

### Description

Starts a job run using a job definition.

### Usage

    glue_start_job_run(JobName, JobRunId, Arguments, AllocatedCapacity,
      Timeout, MaxCapacity, SecurityConfiguration, NotificationProperty,
      WorkerType, NumberOfWorkers, ExecutionClass)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_start_job_run_:_JobName">JobName</code></td>
<td><p>[required] The name of the job definition to use.</p></td>
</tr>
<tr class="even">
<td><code id="glue_start_job_run_:_JobRunId">JobRunId</code></td>
<td><p>The ID of a previous <code>JobRun</code> to retry.</p></td>
</tr>
<tr class="odd">
<td><code id="glue_start_job_run_:_Arguments">Arguments</code></td>
<td><p>The job arguments specifically for this run. For this job run,
they replace the default arguments set in the job definition itself.</p>
<p>You can specify arguments here that your own job-execution script
consumes, as well as arguments that Glue itself consumes.</p>
<p>Job arguments may be logged. Do not pass plaintext secrets as
arguments. Retrieve secrets from a Glue Connection, Secrets Manager or
other secret management mechanism if you intend to keep them within the
Job.</p>
<p>For information about how to specify and consume your own Job
arguments, see the <a
href="https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html">Calling
Glue APIs in Python</a> topic in the developer guide.</p>
<p>For information about the key-value pairs that Glue consumes to set
up your job, see the <a
href="https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html">Special
Parameters Used by Glue</a> topic in the developer guide.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_start_job_run_:_AllocatedCapacity">AllocatedCapacity</code></td>
<td><p>This field is deprecated. Use <code>MaxCapacity</code>
instead.</p>
<p>The number of Glue data processing units (DPUs) to allocate to this
JobRun. You can allocate a minimum of 2 DPUs; the default is 10. A DPU
is a relative measure of processing power that consists of 4 vCPUs of
compute capacity and 16 GB of memory. For more information, see the <a
href="https://aws.amazon.com/glue/pricing/">Glue pricing
page</a>.</p></td>
</tr>
<tr class="odd">
<td><code id="glue_start_job_run_:_Timeout">Timeout</code></td>
<td><p>The <code>JobRun</code> timeout in minutes. This is the maximum
time that a job run can consume resources before it is terminated and
enters <code>TIMEOUT</code> status. This value overrides the timeout
value set in the parent job.</p>
<p>Streaming jobs do not have a timeout. The default for non-streaming
jobs is 2,880 minutes (48 hours).</p></td>
</tr>
<tr class="even">
<td><code id="glue_start_job_run_:_MaxCapacity">MaxCapacity</code></td>
<td><p>The number of Glue data processing units (DPUs) that can be
allocated when this job runs. A DPU is a relative measure of processing
power that consists of 4 vCPUs of compute capacity and 16 GB of memory.
For more information, see the <a
href="https://aws.amazon.com/glue/pricing/">Glue pricing page</a>.</p>
<p>Do not set <code style="white-space: pre;">⁠Max Capacity⁠</code> if
using <code>WorkerType</code> and <code>NumberOfWorkers</code>.</p>
<p>The value that can be allocated for <code>MaxCapacity</code> depends
on whether you are running a Python shell job, or an Apache Spark ETL
job:</p>
<ul>
<li><p>When you specify a Python shell job
(<code>JobCommand.Name</code>="pythonshell"), you can allocate either
0.0625 or 1 DPU. The default is 0.0625 DPU.</p></li>
<li><p>When you specify an Apache Spark ETL job
(<code>JobCommand.Name</code>="glueetl"), you can allocate a minimum of
2 DPUs. The default is 10 DPUs. This job type cannot have a fractional
DPU allocation.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="glue_start_job_run_:_SecurityConfiguration">SecurityConfiguration</code></td>
<td><p>The name of the <code>SecurityConfiguration</code> structure to
be used with this job run.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_start_job_run_:_NotificationProperty">NotificationProperty</code></td>
<td><p>Specifies configuration properties of a job run
notification.</p></td>
</tr>
<tr class="odd">
<td><code id="glue_start_job_run_:_WorkerType">WorkerType</code></td>
<td><p>The type of predefined worker that is allocated when a job runs.
Accepts a value of Standard, G.1X, G.2X, or G.025X.</p>
<ul>
<li><p>For the <code>Standard</code> worker type, each worker provides 4
vCPU, 16 GB of memory and a 50GB disk, and 2 executors per
worker.</p></li>
<li><p>For the <code>G.1X</code> worker type, each worker provides 4
vCPU, 16 GB of memory and a 64GB disk, and 1 executor per
worker.</p></li>
<li><p>For the <code>G.2X</code> worker type, each worker provides 8
vCPU, 32 GB of memory and a 128GB disk, and 1 executor per
worker.</p></li>
<li><p>For the <code>G.025X</code> worker type, each worker maps to 0.25
DPU (2 vCPU, 4 GB of memory, 64 GB disk), and provides 1 executor per
worker. We recommend this worker type for low volume streaming jobs.
This worker type is only available for Glue version 3.0 streaming
jobs.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="glue_start_job_run_:_NumberOfWorkers">NumberOfWorkers</code></td>
<td><p>The number of workers of a defined <code>workerType</code> that
are allocated when a job runs.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_start_job_run_:_ExecutionClass">ExecutionClass</code></td>
<td><p>Indicates whether the job is run with a standard or flexible
execution class. The standard execution-class is ideal for
time-sensitive workloads that require fast job startup and dedicated
resources.</p>
<p>The flexible execution class is appropriate for time-insensitive jobs
whose start and completion times may vary.</p>
<p>Only jobs with Glue version 3.0 and above and command type
<code>glueetl</code> will be allowed to set <code>ExecutionClass</code>
to <code>FLEX</code>. The flexible execution class is available for
Spark jobs.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      JobRunId = "string"
    )

### Request syntax

    svc$start_job_run(
      JobName = "string",
      JobRunId = "string",
      Arguments = list(
        "string"
      ),
      AllocatedCapacity = 123,
      Timeout = 123,
      MaxCapacity = 123.0,
      SecurityConfiguration = "string",
      NotificationProperty = list(
        NotifyDelayAfter = 123
      ),
      WorkerType = "Standard"|"G.1X"|"G.2X"|"G.025X"|"G.4X"|"G.8X",
      NumberOfWorkers = 123,
      ExecutionClass = "FLEX"|"STANDARD"
    )
