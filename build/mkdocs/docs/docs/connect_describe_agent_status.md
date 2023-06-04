<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_describe_agent_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This API is in preview release for Amazon Connect and is subject to change

### Description

This API is in preview release for Amazon Connect and is subject to
change.

Describes an agent status.

### Usage

    connect_describe_agent_status(InstanceId, AgentStatusId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_describe_agent_status_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_describe_agent_status_:_AgentStatusId">AgentStatusId</code></td>
<td><p>[required] The identifier for the agent status.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AgentStatus = list(
        AgentStatusARN = "string",
        AgentStatusId = "string",
        Name = "string",
        Description = "string",
        Type = "ROUTABLE"|"CUSTOM"|"OFFLINE",
        DisplayOrder = 123,
        State = "ENABLED"|"DISABLED",
        Tags = list(
          "string"
        )
      )
    )

### Request syntax

    svc$describe_agent_status(
      InstanceId = "string",
      AgentStatusId = "string"
    )
