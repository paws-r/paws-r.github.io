<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_put_user_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Changes the current status of a user or agent in Amazon Connect

### Description

Changes the current status of a user or agent in Amazon Connect. If the
agent is currently handling a contact, this sets the agent's next
status.

For more information, see [Agent
status](https://docs.aws.amazon.com/connect/latest/adminguide/metrics-agent-status.html)
and [Set your next
status](https://docs.aws.amazon.com/connect/latest/adminguide/set-next-status.html)
in the *Amazon Connect Administrator Guide*.

### Usage

    connect_put_user_status(UserId, InstanceId, AgentStatusId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="connect_put_user_status_:_UserId">UserId</code></td>
<td><p>[required] The identifier of the user.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_put_user_status_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_put_user_status_:_AgentStatusId">AgentStatusId</code></td>
<td><p>[required] The identifier of the agent status.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_user_status(
      UserId = "string",
      InstanceId = "string",
      AgentStatusId = "string"
    )
