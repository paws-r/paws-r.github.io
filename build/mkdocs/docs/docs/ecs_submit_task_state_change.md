<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecs_submit_task_state_change</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This action is only used by the Amazon ECS agent, and it is not intended for use outside of the agent

### Description

This action is only used by the Amazon ECS agent, and it is not intended
for use outside of the agent.

Sent to acknowledge that a task changed states.

### Usage

    ecs_submit_task_state_change(cluster, task, status, reason, containers,
      attachments, managedAgents, pullStartedAt, pullStoppedAt,
      executionStoppedAt)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ecs_submit_task_state_change_:_cluster">cluster</code></td>
<td><p>The short name or full Amazon Resource Name (ARN) of the cluster
that hosts the task.</p></td>
</tr>
<tr class="even">
<td><code id="ecs_submit_task_state_change_:_task">task</code></td>
<td><p>The task ID or full ARN of the task in the state change
request.</p></td>
</tr>
<tr class="odd">
<td><code id="ecs_submit_task_state_change_:_status">status</code></td>
<td><p>The status of the state change request.</p></td>
</tr>
<tr class="even">
<td><code id="ecs_submit_task_state_change_:_reason">reason</code></td>
<td><p>The reason for the state change request.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecs_submit_task_state_change_:_containers">containers</code></td>
<td><p>Any containers that's associated with the state change
request.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_submit_task_state_change_:_attachments">attachments</code></td>
<td><p>Any attachments associated with the state change
request.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecs_submit_task_state_change_:_managedAgents">managedAgents</code></td>
<td><p>The details for the managed agent that's associated with the
task.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_submit_task_state_change_:_pullStartedAt">pullStartedAt</code></td>
<td><p>The Unix timestamp for the time when the container image pull
started.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecs_submit_task_state_change_:_pullStoppedAt">pullStoppedAt</code></td>
<td><p>The Unix timestamp for the time when the container image pull
completed.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_submit_task_state_change_:_executionStoppedAt">executionStoppedAt</code></td>
<td><p>The Unix timestamp for the time when the task execution
stopped.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      acknowledgment = "string"
    )

### Request syntax

    svc$submit_task_state_change(
      cluster = "string",
      task = "string",
      status = "string",
      reason = "string",
      containers = list(
        list(
          containerName = "string",
          imageDigest = "string",
          runtimeId = "string",
          exitCode = 123,
          networkBindings = list(
            list(
              bindIP = "string",
              containerPort = 123,
              hostPort = 123,
              protocol = "tcp"|"udp",
              containerPortRange = "string",
              hostPortRange = "string"
            )
          ),
          reason = "string",
          status = "string"
        )
      ),
      attachments = list(
        list(
          attachmentArn = "string",
          status = "string"
        )
      ),
      managedAgents = list(
        list(
          containerName = "string",
          managedAgentName = "ExecuteCommandAgent",
          status = "string",
          reason = "string"
        )
      ),
      pullStartedAt = as.POSIXct(
        "2015-01-01"
      ),
      pullStoppedAt = as.POSIXct(
        "2015-01-01"
      ),
      executionStoppedAt = as.POSIXct(
        "2015-01-01"
      )
    )
