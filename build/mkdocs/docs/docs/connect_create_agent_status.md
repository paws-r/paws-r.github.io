<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_create_agent_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This API is in preview release for Amazon Connect and is subject to change

### Description

This API is in preview release for Amazon Connect and is subject to
change.

Creates an agent status for the specified Amazon Connect instance.

### Usage

    connect_create_agent_status(InstanceId, Name, Description, State,
      DisplayOrder, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_create_agent_status_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code id="connect_create_agent_status_:_Name">Name</code></td>
<td><p>[required] The name of the status.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_create_agent_status_:_Description">Description</code></td>
<td><p>The description of the status.</p></td>
</tr>
<tr class="even">
<td><code id="connect_create_agent_status_:_State">State</code></td>
<td><p>[required] The state of the status.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_create_agent_status_:_DisplayOrder">DisplayOrder</code></td>
<td><p>The display order of the status.</p></td>
</tr>
<tr class="even">
<td><code id="connect_create_agent_status_:_Tags">Tags</code></td>
<td><p>The tags used to organize, track, or control access for this
resource. For example, { "tags": {"key1":"value1", "key2":"value2"}
}.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AgentStatusARN = "string",
      AgentStatusId = "string"
    )

### Request syntax

    svc$create_agent_status(
      InstanceId = "string",
      Name = "string",
      Description = "string",
      State = "ENABLED"|"DISABLED",
      DisplayOrder = 123,
      Tags = list(
        "string"
      )
    )
