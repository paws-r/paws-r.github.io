<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>datapipeline_report_task_runner_heartbeat</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Task runners call ReportTaskRunnerHeartbeat every 15 minutes to indicate that they are operational

### Description

Task runners call `report_task_runner_heartbeat` every 15 minutes to
indicate that they are operational. If the AWS Data Pipeline Task Runner
is launched on a resource managed by AWS Data Pipeline, the web service
can use this call to detect when the task runner application has failed
and restart a new instance.

### Usage

    datapipeline_report_task_runner_heartbeat(taskrunnerId, workerGroup,
      hostname)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="datapipeline_report_task_runner_heartbeat_:_taskrunnerId">taskrunnerId</code></td>
<td><p>[required] The ID of the task runner. This value should be unique
across your AWS account. In the case of AWS Data Pipeline Task Runner
launched on a resource managed by AWS Data Pipeline, the web service
provides a unique identifier when it launches the application. If you
have written a custom task runner, you should assign a unique identifier
for the task runner.</p></td>
</tr>
<tr class="even">
<td><code
id="datapipeline_report_task_runner_heartbeat_:_workerGroup">workerGroup</code></td>
<td><p>The type of task the task runner is configured to accept and
process. The worker group is set as a field on objects in the pipeline
when they are created. You can only specify a single value for
<code>workerGroup</code>. There are no wildcard values permitted in
<code>workerGroup</code>; the string must be an exact, case-sensitive,
match.</p></td>
</tr>
<tr class="odd">
<td><code
id="datapipeline_report_task_runner_heartbeat_:_hostname">hostname</code></td>
<td><p>The public DNS name of the task runner.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      terminate = TRUE|FALSE
    )

### Request syntax

    svc$report_task_runner_heartbeat(
      taskrunnerId = "string",
      workerGroup = "string",
      hostname = "string"
    )
