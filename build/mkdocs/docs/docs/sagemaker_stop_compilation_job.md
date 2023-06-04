<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_stop_compilation_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops a model compilation job

### Description

Stops a model compilation job.

To stop a job, Amazon SageMaker sends the algorithm the SIGTERM signal.
This gracefully shuts the job down. If the job hasn't stopped, it sends
the SIGKILL signal.

When it receives a `stop_compilation_job` request, Amazon SageMaker
changes the `CompilationJobStatus` of the job to `Stopping`. After
Amazon SageMaker stops the job, it sets the `CompilationJobStatus` to
`Stopped`.

### Usage

    sagemaker_stop_compilation_job(CompilationJobName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_stop_compilation_job_:_CompilationJobName">CompilationJobName</code></td>
<td><p>[required] The name of the model compilation job to
stop.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$stop_compilation_job(
      CompilationJobName = "string"
    )
