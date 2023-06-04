<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecs_execute_command</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Runs a command remotely on a container within a task

### Description

Runs a command remotely on a container within a task.

If you use a condition key in your IAM policy to refine the conditions
for the policy statement, for example limit the actions to a specific
cluster, you receive an `AccessDeniedException` when there is a mismatch
between the condition key value and the corresponding parameter value.

For information about required permissions and considerations, see
[Using Amazon ECS Exec for
debugging](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-exec.html)
in the *Amazon ECS Developer Guide*.

### Usage

    ecs_execute_command(cluster, container, command, interactive, task)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ecs_execute_command_:_cluster">cluster</code></td>
<td><p>The Amazon Resource Name (ARN) or short name of the cluster the
task is running in. If you do not specify a cluster, the default cluster
is assumed.</p></td>
</tr>
<tr class="even">
<td><code id="ecs_execute_command_:_container">container</code></td>
<td><p>The name of the container to execute the command on. A container
name only needs to be specified for tasks containing multiple
containers.</p></td>
</tr>
<tr class="odd">
<td><code id="ecs_execute_command_:_command">command</code></td>
<td><p>[required] The command to run on the container.</p></td>
</tr>
<tr class="even">
<td><code id="ecs_execute_command_:_interactive">interactive</code></td>
<td><p>[required] Use this flag to run your command in interactive
mode.</p></td>
</tr>
<tr class="odd">
<td><code id="ecs_execute_command_:_task">task</code></td>
<td><p>[required] The Amazon Resource Name (ARN) or ID of the task the
container is part of.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      clusterArn = "string",
      containerArn = "string",
      containerName = "string",
      interactive = TRUE|FALSE,
      session = list(
        sessionId = "string",
        streamUrl = "string",
        tokenValue = "string"
      ),
      taskArn = "string"
    )

### Request syntax

    svc$execute_command(
      cluster = "string",
      container = "string",
      command = "string",
      interactive = TRUE|FALSE,
      task = "string"
    )
