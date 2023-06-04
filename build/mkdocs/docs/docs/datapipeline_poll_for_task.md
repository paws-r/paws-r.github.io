<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>datapipeline_poll_for_task</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Task runners call PollForTask to receive a task to perform from AWS Data Pipeline

### Description

Task runners call `poll_for_task` to receive a task to perform from AWS
Data Pipeline. The task runner specifies which tasks it can perform by
setting a value for the `workerGroup` parameter. The task returned can
come from any of the pipelines that match the `workerGroup` value passed
in by the task runner and that was launched using the IAM user
credentials specified by the task runner.

If tasks are ready in the work queue, `poll_for_task` returns a response
immediately. If no tasks are available in the queue, `poll_for_task`
uses long-polling and holds on to a poll connection for up to a 90
seconds, during which time the first newly scheduled task is handed to
the task runner. To accomodate this, set the socket timeout in your task
runner to 90 seconds. The task runner should not call `poll_for_task`
again on the same `workerGroup` until it receives a response, and this
can take up to 90 seconds.

### Usage

    datapipeline_poll_for_task(workerGroup, hostname, instanceIdentity)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="datapipeline_poll_for_task_:_workerGroup">workerGroup</code></td>
<td><p>[required] The type of task the task runner is configured to
accept and process. The worker group is set as a field on objects in the
pipeline when they are created. You can only specify a single value for
<code>workerGroup</code> in the call to <code>poll_for_task</code>.
There are no wildcard values permitted in <code>workerGroup</code>; the
string must be an exact, case-sensitive, match.</p></td>
</tr>
<tr class="even">
<td><code
id="datapipeline_poll_for_task_:_hostname">hostname</code></td>
<td><p>The public DNS name of the calling task runner.</p></td>
</tr>
<tr class="odd">
<td><code
id="datapipeline_poll_for_task_:_instanceIdentity">instanceIdentity</code></td>
<td><p>Identity information for the EC2 instance that is hosting the
task runner. You can get this value from the instance using <code
style="white-space: pre;">⁠http://169.254.169.254/latest/meta-data/instance-id⁠</code>.
For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html">Instance
Metadata</a> in the <em>Amazon Elastic Compute Cloud User Guide.</em>
Passing in this value proves that your task runner is running on an EC2
instance, and ensures the proper AWS Data Pipeline service charges are
applied to your pipeline.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      taskObject = list(
        taskId = "string",
        pipelineId = "string",
        attemptId = "string",
        objects = list(
          list(
            id = "string",
            name = "string",
            fields = list(
              list(
                key = "string",
                stringValue = "string",
                refValue = "string"
              )
            )
          )
        )
      )
    )

### Request syntax

    svc$poll_for_task(
      workerGroup = "string",
      hostname = "string",
      instanceIdentity = list(
        document = "string",
        signature = "string"
      )
    )
