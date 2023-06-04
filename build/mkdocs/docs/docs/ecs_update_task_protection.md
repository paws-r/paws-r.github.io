<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecs_update_task_protection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the protection status of a task

### Description

Updates the protection status of a task. You can set `protectionEnabled`
to `true` to protect your task from termination during scale-in events
from [Service
Autoscaling](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-auto-scaling.html)
or
[deployments](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html).

Task-protection, by default, expires after 2 hours at which point Amazon
ECS clears the `protectionEnabled` property making the task eligible for
termination by a subsequent scale-in event.

You can specify a custom expiration period for task protection from 1
minute to up to 2,880 minutes (48 hours). To specify the custom
expiration period, set the `expiresInMinutes` property. The
`expiresInMinutes` property is always reset when you invoke this
operation for a task that already has `protectionEnabled` set to `true`.
You can keep extending the protection expiration period of a task by
invoking this operation repeatedly.

To learn more about Amazon ECS task protection, see [Task scale-in
protection](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-scale-in-protection.html)
in the *Amazon Elastic Container Service Developer Guide* .

This operation is only supported for tasks belonging to an Amazon ECS
service. Invoking this operation for a standalone task will result in an
`TASK_NOT_VALID` failure. For more information, see [API failure
reasons](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/api_failures_messages.html).

If you prefer to set task protection from within the container, we
recommend using the [Task scale-in protection
endpoint](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-scale-in-protection-endpoint.html).

### Usage

    ecs_update_task_protection(cluster, tasks, protectionEnabled,
      expiresInMinutes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ecs_update_task_protection_:_cluster">cluster</code></td>
<td><p>[required] The short name or full Amazon Resource Name (ARN) of
the cluster that hosts the service that the task sets exist in.</p></td>
</tr>
<tr class="even">
<td><code id="ecs_update_task_protection_:_tasks">tasks</code></td>
<td><p>[required] A list of up to 10 task IDs or full ARN
entries.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecs_update_task_protection_:_protectionEnabled">protectionEnabled</code></td>
<td><p>[required] Specify <code>true</code> to mark a task for
protection and <code>false</code> to unset protection, making it
eligible for termination.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_update_task_protection_:_expiresInMinutes">expiresInMinutes</code></td>
<td><p>If you set <code>protectionEnabled</code> to <code>true</code>,
you can specify the duration for task protection in minutes. You can
specify a value from 1 minute to up to 2,880 minutes (48 hours). During
this time, your task will not be terminated by scale-in events from
Service Auto Scaling or deployments. After this time period lapses,
<code>protectionEnabled</code> will be reset to <code>false</code>.</p>
<p>If you don’t specify the time, then the task is automatically
protected for 120 minutes (2 hours).</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      protectedTasks = list(
        list(
          taskArn = "string",
          protectionEnabled = TRUE|FALSE,
          expirationDate = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      failures = list(
        list(
          arn = "string",
          reason = "string",
          detail = "string"
        )
      )
    )

### Request syntax

    svc$update_task_protection(
      cluster = "string",
      tasks = list(
        "string"
      ),
      protectionEnabled = TRUE|FALSE,
      expiresInMinutes = 123
    )

### Examples

    ## Not run: 
    # This example enables scale-in protection for a task for 60 minutes.
    svc$update_task_protection(
      cluster = "test-task-protection",
      expiresInMinutes = 60L,
      protectionEnabled = TRUE,
      tasks = list(
        "b8b1cf532d0e46ba8d44a40d1de16772"
      )
    )

    # This example enables task scale-in protection for a task, without
    # specifying the expiresInMinutes parameter, for the default protection
    # period of 120 minutes.
    svc$update_task_protection(
      cluster = "test-task-protection",
      protectionEnabled = TRUE,
      tasks = list(
        "b8b1cf532d0e46ba8d44a40d1de16772"
      )
    )

    # This example removes scale-in protection for a task.
    svc$update_task_protection(
      cluster = "test-task-protection",
      protectionEnabled = FALSE,
      tasks = list(
        "b8b1cf532d0e46ba8d44a40d1de16772"
      )
    )

    ## End(Not run)
