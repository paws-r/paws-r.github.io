<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_update_agent_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This API is in preview release for Amazon Connect and is subject to change

### Description

This API is in preview release for Amazon Connect and is subject to
change.

Updates agent status.

### Usage

    connect_update_agent_status(InstanceId, AgentStatusId, Name,
      Description, State, DisplayOrder, ResetOrderNumber)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_update_agent_status_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_update_agent_status_:_AgentStatusId">AgentStatusId</code></td>
<td><p>[required] The identifier of the agent status.</p></td>
</tr>
<tr class="odd">
<td><code id="connect_update_agent_status_:_Name">Name</code></td>
<td><p>The name of the agent status.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_update_agent_status_:_Description">Description</code></td>
<td><p>The description of the agent status.</p></td>
</tr>
<tr class="odd">
<td><code id="connect_update_agent_status_:_State">State</code></td>
<td><p>The state of the agent status.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_update_agent_status_:_DisplayOrder">DisplayOrder</code></td>
<td><p>The display order of the agent status.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_update_agent_status_:_ResetOrderNumber">ResetOrderNumber</code></td>
<td><p>A number indicating the reset order of the agent status.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_agent_status(
      InstanceId = "string",
      AgentStatusId = "string",
      Name = "string",
      Description = "string",
      State = "ENABLED"|"DISABLED",
      DisplayOrder = 123,
      ResetOrderNumber = TRUE|FALSE
    )
