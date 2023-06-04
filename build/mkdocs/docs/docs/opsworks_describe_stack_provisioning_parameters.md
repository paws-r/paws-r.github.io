<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks_describe_stack_provisioning_parameters</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Requests a description of a stack's provisioning parameters

### Description

Requests a description of a stack's provisioning parameters.

**Required Permissions**: To use this action, an IAM user must have a
Show, Deploy, or Manage permissions level for the stack or an attached
policy that explicitly grants permissions. For more information about
user permissions, see [Managing User
Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

### Usage

    opsworks_describe_stack_provisioning_parameters(StackId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opsworks_describe_stack_provisioning_parameters_:_StackId">StackId</code></td>
<td><p>[required] The stack ID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AgentInstallerUrl = "string",
      Parameters = list(
        "string"
      )
    )

### Request syntax

    svc$describe_stack_provisioning_parameters(
      StackId = "string"
    )
