<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecs_get_task_protection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the protection status of tasks in an Amazon ECS service

### Description

Retrieves the protection status of tasks in an Amazon ECS service.

### Usage

    ecs_get_task_protection(cluster, tasks)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ecs_get_task_protection_:_cluster">cluster</code></td>
<td><p>[required] The short name or full Amazon Resource Name (ARN) of
the cluster that hosts the service that the task sets exist in.</p></td>
</tr>
<tr class="even">
<td><code id="ecs_get_task_protection_:_tasks">tasks</code></td>
<td><p>A list of up to 100 task IDs or full ARN entries.</p></td>
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

    svc$get_task_protection(
      cluster = "string",
      tasks = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # In this example, we get the protection status for a single task.
    svc$get_task_protection(
      cluster = "test-task-protection",
      tasks = list(
        "b8b1cf532d0e46ba8d44a40d1de16772"
      )
    )

    ## End(Not run)
