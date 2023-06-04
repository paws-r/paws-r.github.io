<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sfn_get_activity_task</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Used by workers to retrieve a task (with the specified activity ARN) which has been scheduled for execution by a running state machine

### Description

Used by workers to retrieve a task (with the specified activity ARN)
which has been scheduled for execution by a running state machine. This
initiates a long poll, where the service holds the HTTP connection open
and responds as soon as a task becomes available (i.e. an execution of a
task of this type is needed.) The maximum time the service holds on to
the request before responding is 60 seconds. If no task is available
within 60 seconds, the poll returns a `taskToken` with a null string.

This API action isn't logged in CloudTrail.

Workers should set their client side socket timeout to at least 65
seconds (5 seconds higher than the maximum time the service may hold the
poll request).

Polling with `get_activity_task` can cause latency in some
implementations. See [Avoid Latency When Polling for Activity
Tasks](https://docs.aws.amazon.com/step-functions/latest/dg/bp-activity-pollers.html)
in the Step Functions Developer Guide.

### Usage

    sfn_get_activity_task(activityArn, workerName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sfn_get_activity_task_:_activityArn">activityArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the activity to
retrieve tasks from (assigned when you create the task using
<code>create_activity</code>.)</p></td>
</tr>
<tr class="even">
<td><code id="sfn_get_activity_task_:_workerName">workerName</code></td>
<td><p>You can provide an arbitrary name in order to identify the worker
that the task is assigned to. This name is used when it is logged in the
execution history.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      taskToken = "string",
      input = "string"
    )

### Request syntax

    svc$get_activity_task(
      activityArn = "string",
      workerName = "string"
    )
