<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecs_submit_container_state_change</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This action is only used by the Amazon ECS agent, and it is not intended for use outside of the agent

### Description

This action is only used by the Amazon ECS agent, and it is not intended
for use outside of the agent.

Sent to acknowledge that a container changed states.

### Usage

    ecs_submit_container_state_change(cluster, task, containerName,
      runtimeId, status, exitCode, reason, networkBindings)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ecs_submit_container_state_change_:_cluster">cluster</code></td>
<td><p>The short name or full ARN of the cluster that hosts the
container.</p></td>
</tr>
<tr class="even">
<td><code id="ecs_submit_container_state_change_:_task">task</code></td>
<td><p>The task ID or full Amazon Resource Name (ARN) of the task that
hosts the container.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecs_submit_container_state_change_:_containerName">containerName</code></td>
<td><p>The name of the container.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_submit_container_state_change_:_runtimeId">runtimeId</code></td>
<td><p>The ID of the Docker container.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecs_submit_container_state_change_:_status">status</code></td>
<td><p>The status of the state change request.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_submit_container_state_change_:_exitCode">exitCode</code></td>
<td><p>The exit code that's returned for the state change
request.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecs_submit_container_state_change_:_reason">reason</code></td>
<td><p>The reason for the state change request.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_submit_container_state_change_:_networkBindings">networkBindings</code></td>
<td><p>The network bindings of the container.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      acknowledgment = "string"
    )

### Request syntax

    svc$submit_container_state_change(
      cluster = "string",
      task = "string",
      containerName = "string",
      runtimeId = "string",
      status = "string",
      exitCode = 123,
      reason = "string",
      networkBindings = list(
        list(
          bindIP = "string",
          containerPort = 123,
          hostPort = 123,
          protocol = "tcp"|"udp",
          containerPortRange = "string",
          hostPortRange = "string"
        )
      )
    )
