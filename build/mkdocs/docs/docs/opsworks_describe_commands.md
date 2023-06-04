<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks_describe_commands</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the results of specified commands

### Description

Describes the results of specified commands.

This call accepts only one resource-identifying parameter.

**Required Permissions**: To use this action, an IAM user must have a
Show, Deploy, or Manage permissions level for the stack, or an attached
policy that explicitly grants permissions. For more information about
user permissions, see [Managing User
Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

### Usage

    opsworks_describe_commands(DeploymentId, InstanceId, CommandIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opsworks_describe_commands_:_DeploymentId">DeploymentId</code></td>
<td><p>The deployment ID. If you include this parameter,
<code>describe_commands</code> returns a description of the commands
associated with the specified deployment.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_describe_commands_:_InstanceId">InstanceId</code></td>
<td><p>The instance ID. If you include this parameter,
<code>describe_commands</code> returns a description of the commands
associated with the specified instance.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworks_describe_commands_:_CommandIds">CommandIds</code></td>
<td><p>An array of command IDs. If you include this parameter,
<code>describe_commands</code> returns a description of the specified
commands. Otherwise, it returns a description of every command.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Commands = list(
        list(
          CommandId = "string",
          InstanceId = "string",
          DeploymentId = "string",
          CreatedAt = "string",
          AcknowledgedAt = "string",
          CompletedAt = "string",
          Status = "string",
          ExitCode = 123,
          LogUrl = "string",
          Type = "string"
        )
      )
    )

### Request syntax

    svc$describe_commands(
      DeploymentId = "string",
      InstanceId = "string",
      CommandIds = list(
        "string"
      )
    )
